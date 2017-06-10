// Copyright (C) 1991-2016 Altera Corporation. All rights reserved.
// Your use of Altera Corporation's design tools, logic functions 
// and other software and tools, and its AMPP partner logic 
// functions, and any output files from any of the foregoing 
// (including device programming or simulation files), and any 
// associated documentation or information are expressly subject 
// to the terms and conditions of the Altera Program License 
// Subscription Agreement, the Altera Quartus Prime License Agreement,
// the Altera MegaCore Function License Agreement, or other 
// applicable license agreement, including, without limitation, 
// that your use is for the sole purpose of programming logic 
// devices manufactured by Altera and sold by Altera or its 
// authorized distributors.  Please refer to the applicable 
// agreement for further details.

// Generated by Quartus Prime Version 16.0.0 Build 211 04/27/2016 SJ Lite Edition
// Created on Sun Jun 04 21:03:52 2017

// synthesis message_off 10175

`timescale 1ns/1ns

module parte2_maquina_estados (
    clock,reset,sensor1,sensor2,
    enters,exits,count);

    input clock;
    input reset;
    input sensor1;
    input sensor2;
    tri0 reset;
    tri0 sensor1;
    tri0 sensor2;
    output enters;
    output exits;
	 output count;
    reg enters;
    reg exits;
	 reg [31:0] count;
    reg [9:0] fstate;
    reg [9:0] reg_fstate;
    parameter idle=0,sensor1_activated=1,sensor2_activated=2,both_sensors_active1=3,car_entered=4,car_exited=5,sensor1_deactivated=6,sensor2_deactivated=7,both_sensors_active2=8,error=9;

    always @(posedge clock)
    begin
        if (clock) begin
            fstate <= reg_fstate;
        end
    end

    always @(fstate or reset or sensor1 or sensor2)
    begin
        if (reset) begin
            reg_fstate <= idle;
            enters <= 1'b0;
            exits <= 1'b0;
            count <= 32'b0;
        end
        else begin
            enters <= 1'b0;
            exits <= 1'b0;
            case (fstate)
                idle: begin
                    // Sensor 1 se activa => sensor1_activated (avanza)
                    if (((sensor1 == 1'b1) & (sensor2 == 1'b0)))
                        reg_fstate <= sensor1_activated;
                    // Sensor 2 se activa => sensor2_activated (avanza)
                    else if (((sensor1 == 1'b0) & (sensor2 == 1'b1)))
                        reg_fstate <= sensor2_activated;
                    // Ambos sensores se activan al mismo tiempo => error
                    else if (((sensor1 == 1'b1) & (sensor2 == 1'b1)))
                        reg_fstate <= error;
                    // Inserting 'else' block to prevent latch inference
                    else
                        reg_fstate <= idle;
                end
                sensor1_activated: begin
                    // Sensor 1 se desactiva => idle (se devuelve)
                    if (((sensor1 == 1'b0) & (sensor2 == 1'b0)))
                        reg_fstate <= idle;
                    // Sensor 2 se activa => both_sensors_active1 (avanza)
                    else if (((sensor1 == 1'b1) & (sensor2 == 1'b1)))
                        reg_fstate <= both_sensors_active1;
                    // Sensor 1 se desactiva y sensor 2 se activa => error
                    else if (((sensor1 == 1'b0) & (sensor2 == 1'b1)))
                        reg_fstate <= error;
                    // Inserting 'else' block to prevent latch inference
                    else
                        reg_fstate <= sensor1_activated;
                    enters <= 1'b0;
                    exits <= 1'b0;
                end
                sensor2_activated: begin
                    // Sensor 2 se desactiva => idle (se devuelve)
                    if (((sensor1 == 1'b0) & (sensor2 == 1'b0)))
                        reg_fstate <= idle;
                    // Sensor 1 se activa => both_sensors_active1 (avanza)
                    else if (((sensor1 == 1'b1) & (sensor2 == 1'b1)))
                        reg_fstate <= both_sensors_active2;
                    // Sensor 2 se desactiva y sensor 1 se activa => error
                    else if (((sensor1 == 1'b1) & (sensor2 == 1'b0)))
                        reg_fstate <= error;
                    // Inserting 'else' block to prevent latch inference
                    else
                        reg_fstate <= sensor2_activated;
                    enters <= 1'b0;
                    exits <= 1'b0;
                end
                both_sensors_active1: begin
                    // Sensor 1 se desactiva => sensor1_deactivated (avanza)
                    if (((sensor1 == 1'b0) & (sensor2 == 1'b1)))
                        reg_fstate <= sensor1_deactivated;
                    // Ambos sensores se desactivan al mismo tiempo => error
                    else if (((sensor1 == 1'b0) & (sensor2 == 1'b0)))
                        reg_fstate <= error;
                    // Sensor 2 se desactiva => sensor1_activated (se devuelve)
                    else if (((sensor1 == 1'b1) & (sensor2 == 1'b0)))
                        reg_fstate <= sensor1_activated;
                    // Inserting 'else' block to prevent latch inference
                    else
                        reg_fstate <= both_sensors_active1;
                end
                both_sensors_active2: begin
                    // Sensor 2 se desactiva => sensor2_deactivated (avanza)
                    if (((sensor1 == 1'b1) & (sensor2 == 1'b0)))
                        reg_fstate <= sensor2_deactivated;
                    // Ambos sensores se desactivan al mismo tiempo => error
                    else if (((sensor1 == 1'b0) & (sensor2 == 1'b0)))
                        reg_fstate <= error;
                    // Sensor 1 se desactiva => sensor2_activated (se devuelve)
                    else if (((sensor1 == 1'b0) & (sensor2 == 1'b1)))
                        reg_fstate <= sensor2_activated;
                    // Inserting 'else' block to prevent latch inference
                    else
                        reg_fstate <= both_sensors_active2;
                end
                sensor1_deactivated: begin
                    // Sensor 2 se desactiva => car_entered (avanza)
                    if (((sensor1 == 1'b0) & (sensor2 == 1'b0)))
                        reg_fstate <= car_entered;
                    // Sensor 1 se activa => both_sensors_active1 (se devuelve)
                    else if (((sensor1 == 1'b1) & (sensor2 == 1'b1)))
                        reg_fstate <= both_sensors_active1;
                    // Sensor 1 se activa y sensor 2 se desactiva => error
                    else if (((sensor1 == 1'b1) & (sensor2 == 1'b0)))
                        reg_fstate <= error;
                    // Inserting 'else' block to prevent latch inference
                    else
                        reg_fstate <= sensor1_deactivated;
                end
                sensor2_deactivated: begin
                    // Sensor 1 se desactiva => car_exited (avanza)
                    if (((sensor1 == 1'b0) & (sensor2 == 1'b0)))
                        reg_fstate <= car_exited;
                    // Sensor 2 se activa => both_sensors_active2 (se devuelve)
                    else if (((sensor1 == 1'b1) & (sensor2 == 1'b1)))
                        reg_fstate <= both_sensors_active2;
                    // Sensor 2 se activa y sensor 1 se desactiva => error
                    else if (((sensor1 == 1'b0) & (sensor2 == 1'b1)))
                        reg_fstate <= error;
                    // Inserting 'else' block to prevent latch inference
                    else
                        reg_fstate <= sensor2_deactivated;
                end
                car_entered: begin
                    reg_fstate <= idle;
                    enters <= 1'b1;
                    count <= count + 1;
                end
                car_exited: begin
                    reg_fstate <= idle;
                    exits <= 1'b1;
                    count <= count - 1;
                end
                error: begin
                    reg_fstate <= idle;
                end
                default: begin
                    enters <= 1'bx;
                    exits <= 1'bx;
                    count <= 32'bx;
                    $display ("Reach undefined state");
                end
            endcase
        end
    end
endmodule // parte2_maquina_estados
