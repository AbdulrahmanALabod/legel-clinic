<?php

/**
 * Ensures that the module init file can't be accessed directly, only within the application.
 */
defined('BASEPATH') or exit('No direct script access allowed');

/*
Module Name: Pickup Document Module
Description: Pickup Document Module.
Version: 0.0.1
Requires at least: 2.3.*
*/

hooks()->add_action('admin_init', 'my_module_init_menu_items');

function my_module_init_menu_items(){
    $CI = &get_instance();

    $CI->app_menu->add_sidebar_menu_item('custom-menu-unique-id', [
        'name'     => 'Leads', // The name if the item
        'href'     => '/office/admin/leads', // URL of the item
        'position' => 10, // The menu position, see below for default positions.
        'icon'     => 'fa fa-question-circle', // Font awesome icon
    ]);

    $CI->app_menu->add_sidebar_menu_item('custom-menu-unique-tickets', [
        'name'     => 'Support tickets', // The name if the item
        'href'     => '/office/admin/tickets', // URL of the item
        'position' => 10, // The menu position, see below for default positions.
        'icon'     => 'fa fa-ticket ', // Font awesome icon
    ]);
}

hooks()->add_action('clients_init', 'my_module_clients_area_menu_items');

function my_module_clients_area_menu_items()
{
    // Item for all clients
    add_theme_menu_item('unique-item-id', [
        'name'     => 'Documents delivery',
        'href'     => site_url('surveys/survey/2/32144b588f8eff83b35e1da3affc98d5'),
        'position' => 10,
    ]);

    // Show menu item only if client is logged in


    if (!is_client_logged_in()) {
                add_theme_menu_item('pickup-partners', [
            'name'     => 'Partners',
            'href'     => site_url('pickup/pickups/partners'),
            'position' => 15,
        ]);
    }

    if (is_client_logged_in()) {

        add_theme_menu_item('issue-tracking', [

            'name'     => 'Help',
            'href'     => site_url('surveys/survey/1/59c7f73627237790a8e62dfafa167ae1'),
            'position' => 15,
        ]);

        add_theme_menu_item('ask-a-lawyer', [
            'name'     => 'Ask a lawyer',
            'href'     => site_url('pickup/pickups/ask'),
            'position' => 15,
        ]);

    }

}