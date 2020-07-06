# Zubax Komar power stage manufacturing instructions

The manufacturing documentation package contains the following entities:

* Gerber files.
* Assembly drawings (in PDF format) and centroid files.
* BOM spreadsheet.
* PCB stack specification exported from the EDA.
* This document.

The device assembly involves soldering wires.
Considering that Digikey has a very limited choice of wires and the overall impracticality of the idea of
buying wires on Digikey it is recommended to source the wires from local suppliers.

### PCB properties

The PCB is 4-layer with 35 um copper on all layers.
Its dimensions is a circle with a diameter of 58 mm.
The total PCB thickness is 1.6±0.1 mm.
The solder mask color should be red, silkscreen color -- white.

The copper layers are ordered as follows:

1. copper_top_l1
2. copper_inner_l2
3. copper_inner_l3
4. copper_bottom_l4

## Assembly

### SMD assembly

<img src="pics/1.png" />

### Mitochondrik mounting

Prior to mounting the Mitochondrik,
the PLS2 pin headers (CON100, CON101, CON102, CON103, CON104, CON105) should be soldered to the PCB.
The Mitochondrik is inserted on top of these headers and soldered.

### Capacitor soldering

The C1 and C2 radial electrolytic caps should be soldered sideways as shown in picture below.
Ensure the correct polarity.

The capacitors should be glued to the PCB with a non-conductive silicone glue
(see the BOM table below for the recommended partnumber).

<img src="pics/3.png" width="500" />

### Power wires soldering

The ends that are not soldered to the PCB should be stripped and tinned (approx. 5 mm).
The wires should be soldered as shown in the pictures below.

<img src="pics/4.png" />

### Motor phase interface assembly

The motor phase interface can be assembled in one of the configurations described in this section.

#### Rigid phase connector

The phase connector consists of a plastic part with epoxy-glued 4.5 mm female bullet connectors
with pre-formed and pre-soldered 2 mm<sup>2</sup> solid wires.

<img src="pics/5.png" />

It should be soldered to the PCB so that the bottom surface of the plastic part rests on the PCB:

<img src="pics/6.png" width="500" />

#### Fixed motor attachment

The motor is installed onto the top part of the enclosure.
The motor phase wires are routed inside the enclosure, cut to the appropriate length, and then soldered to the PCB.

The motor and its parts, if any, are not part of the bill of materials.

### Conformal coating

The PCB should be conformal-coated (see the BOM table below for the recommended partnumber),
excluding the connectors on the bottom side of the PCB (CON1, CON3, CON4, CON5, CON6, CON7)
and the inner surfaces of the phase connectors.

### Housing assembly

The PCB is placed inside the housing. For the detailed instructions please watch the video.

[![Komar housing assembly instruction](http://img.youtube.com/vi/qDjCuD04zwk/0.jpg)](http://www.youtube.com/watch?v=qDjCuD04zwk "Komar housing assembly instruction")

## BOM for the final assembly

| Item                          | Amount| Part number               | Description                                           |
|-------------------------------|-------|---------------------------|-------------------------------------------------------|
| Silicone glue                 | 5 ml  | Penosil 2121              | Used for fixing the large aluminum capacitors         |
| Conformal coating             | 5 ml  | Taerosol PRF 202          | Fast-curing protective coating                        |
| Phase connector               | 1     |                           | 3D-printed from ABS                                   |
| Positive wire                 | 1     | copper 2.5 sqmm multi-strand silicone/PVC red 105 °C   | Positive power wire      |
| Negative wire                 | 1     | copper 2.5 sqmm multi-strand silicone/PVC black 105 °C | Negative power wire      |
| Housing top                   | 1     |                           | Milled from aluminum                                  |
| Housing bottom                | 1     |                           | Milled from aluminum                                  |
| Housing screws                | 4     | DIN 965 M3.5 16 mm        | Fastening both parts of the housing together          |
| Motor screws                  | 4     | ISO 7380 M4 6 mm          | Fastening the motor to the top part of the housing    |
| Mounting screws               | 4     | DIN 912 M4 6 mm           | Fastening the assembled Komar in place                |
| Connector protection cap screws | 0/3 | DIN912 M2.5 4 mm          | Fastening the connector protection cap against the bottom |
| Connector protection cap      | 0/1   |                           | 3D-printed from ABS                                   |
| PCB spacers                   | 1     |                           | 3D-printed from ABS                                   |
| Thermal pad                   | 50x30 mm | Arctic Cooling, 1 mm   | Sinks the heat to the bottom part of the housing      |
