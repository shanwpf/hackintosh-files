/*
 * Intel ACPI Component Architecture
 * AML/ASL+ Disassembler version 20180427 (64-bit version)(RM)
 * Copyright (c) 2000 - 2018 Intel Corporation
 * 
 * Disassembling to non-symbolic legacy ASL operators
 *
 * Disassembly of SSDT-7-TbtTypeC.aml, Sun Apr 14 12:11:01 2019
 *
 * Original Table Header:
 *     Signature        "SSDT"
 *     Length           0x000000DB (219)
 *     Revision         0x02
 *     Checksum         0x04
 *     OEM ID           "INTEL "
 *     OEM Table ID     "TbtTypeC"
 *     OEM Revision     0x00000000 (0)
 *     Compiler ID      "INTL"
 *     Compiler Version 0x20160422 (538313762)
 */
DefinitionBlock ("", "SSDT", 2, "INTEL ", "TbtTypeC", 0x00000000)
{
    External (_SB_.PCI0.RP01.PXSX, DeviceObj)    // (from opcode)
    External (_SB_.PCI0.RP09.PXSX, DeviceObj)    // (from opcode)
    External (TBSE, IntObj)    // (from opcode)
    External (TBTS, IntObj)    // (from opcode)
    External (UPT1, IntObj)    // (from opcode)
    External (UPT2, IntObj)    // (from opcode)
    External (USME, IntObj)    // (from opcode)

    If (LAnd (LEqual (TBTS, One), LEqual (TBSE, One)))
    {
        Scope (\_SB.PCI0.RP01.PXSX)
        {
            Name (TUSB, Package (0x02)
            {
                One, 
                0x04
            })
        }
    }

    If (LAnd (LEqual (TBTS, One), LEqual (TBSE, 0x09)))
    {
        Scope (\_SB.PCI0.RP09.PXSX)
        {
            Name (TUSB, Package (0x02)
            {
                One, 
                0x02
            })
        }
    }
}

