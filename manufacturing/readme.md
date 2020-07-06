# Zubax Komar power stage manufacturing instructions

The manufacturing documents package can be found attached to the releases in this repository. It contains following entities:

* Gerber - all the necessary gerber files are contained here.
* Assembly - assembly drawings (in PDF format) and centroid files are contained here.
* BOM - a bill of materials in a form of spreadsheet.
* PCB stack - a file containing description of the PCB stack and layers.
* Wires drawing.

It should be noted that Komar is a highly reliable device and consists of AEC-Q qualified components, thus any changes to BOM are **highly undesirable**.

The device assembly involves soldering wires. Considering that Digikey has a very limited choice of wires and the overall impracticality of the idea of buying wires on Digikey it is recommended to source the wires from local suppliers. The criteria are:

* Wire material - copper
* Wire type - multi stranded
* Cross section: 2.5 mm<sup>2</sup> (AWG 12)
* Color (red and black are used in the design)
* Insulation material (silicone is highly recommended for its outstanding thermal resistance, although PVC may be used as well)



### PCB properties:

The PCB is 4 layer PCB with 35 um copper on all layers. Its dimensions is a circle with a diameter of 58 mm. PCB Total
 thickness is 1.55 ± 0.05 mm. Solder Mask color should be red, silkscreen color - white. 

The copper layers are ordered as follows:

1. copper_top_l1
2. copper_inner_l2
3. copper_inner_l3
4. copper_bottom_l4

   

## Assembly

There are several steps to assemble the PCB:

1. **SMD assembly**. After SMD assembly the board should look like this:
   

<img src="pics/1.png" width="1000"> 

2. **Mitochondrik mounting**. Prior to mounting Mitochondrik PLS2 pin headers (CON100, CON101, CON102, CON103, CON104, CON105) should be soldered to the PCB. Mitochondrik is mounted on top of these pinheaders and soldered. 

3. **Capacitors soldering**.

   C1 and C2 radial electrolytic should be soldered sideways as in picture below. **Observe the polarity!** 

   After mounting the capacitors they should be glued to the PCB with non-conductive silicone glue (see BOM table below for the recommended partnumber).

   <p align="center">
   <img src="pics/3.png" alt="" width="500"/>
   </p>

4. **Power wires soldering.** 2 power supply wires (20 cm long each, one red and one black, 2.5 mm<sup>2</sup> multi-strand cable) Power supply wires’ ends that are not soldered to the PCB should be stripped and tinned (approx. 5 mm). Phase wires’ ends that are not soldered to the PCB should not be stripped. The wires should be soldered as shown in the pictures below.

   <img src="pics/4.png" width="1000">

5. **Phase connector mounting**. Phase connector consists of a plastic part with epoxy-glued 4.5 mm female bullet connectors with pre-formed and pre-soldered 2 mm<sup>2</sup> cross-section solid wires. 
   
   <img src="pics/5.png" width="1000">

   It should be soldered to the PCB so that bottom surface of the plastic part rests on the PCB (see the pic below).

   <p align="center">
   <img src="pics/6.png" alt="" width="500"/>
   </p>
   
   **Conformal coating.** The PCBs should be covered with conformal coating (see BOM table below for the recommended partnumber) entirely excluding and connectors on the bottom side of the PCB (CON1, CON3, CON4, CON5, CON6, CON7) and phase connector's bullet connectors inner surfaces.

6. **Housing assembly**.  At this step the PCB is placed into the housing. For detailed instructions please watch the video below. 

   [![Komar housing assembly instruction](http://img.youtube.com/vi/qDjCuD04zwk/0.jpg)](http://www.youtube.com/watch?v=qDjCuD04zwk "Komar housing assembly instruction")

## BOM for final assembly

| Name                                                         | Description                                                  |
| ------------------------------------------------------------ | ------------------------------------------------------------ |
| [Penosil 2121](https://penosil.com/gb/silicone-and-acrylic-sealants/38-penosil-premium-neutral-silicone-2121.html) | Silicone glue. Is used to blue the radial capacitors to the PCB. |
| [Taerosol PRF 202](https://taerosol.com/202-plastic-spray-2/) | Fast drying protective coating. Is used for conformal coating of the device. |
| Phase connector                                              | Custom connector for motor phase wires. Provides the connection between the motor and the PCB |
| Positive wire                                                | Positive power wire. 20 cm piece of 2.5 mm<sup>2</sup> (12 AWG) multi-strand RED wire in silicone insulation. |
| Negative wire                                                | Negative power wire. 20 cm piece of 2.5 mm<sup>2</sup> (12 AWG) multi-strand BLACK wire in silicone insulation. |
| Housing top                                                  | Top part of the housing.                                     |
| Housing bottom                                               | Bottom part of the housing.                                  |
| Housing screws                                               | Screws that hold both parts of the housing together. 4 pcs 91420A183 from mcmaster.com (M3.5 DIN 965, 16 mm length screws). |
| PCB spacers                                                  | Spacers that are placed between the PCB and the housing. 3d printed parts. ABS plastic. |
| Thermal pad                                                  | 1 mm thick thermal pad from arctic cooling. Provides thermal contact between the PCB and the bottom part of the housing. |
| Motor screws                                                 | Screws that are used for attaching the motor to the top part of the housing.4 pcs 92095A188 from mcmaster.com (M4 ISO 7380, 6 mm length screws). |
| Connectors protection cap                                    | Provides some level of protection for interface connectors and may act as a guide for power wires./ 3d printed plastic part. ABS plastic. |
| Cap screws                                                   | Screws that are used to hold connectors protection cap in place. 3 pcs screws 91290A099 from mcmaster.com (M2.5 DIN912 4 mm length screws). |
| Mounting screws                                              | Screws that are used to mount the assembled Komar in place. 4 pcs screws 91292A107 from mcmaster.com (M4 DIN 912 6 mm length screws) |
