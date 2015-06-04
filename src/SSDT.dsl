/*
 * Intel ACPI Component Architecture
 * AML Disassembler version 20110623-64 [Jun 23 2011]
 * Copyright (c) 2000 - 2011 Intel Corporation
 * 
 * Disassembly of iASLNmPlzf.aml, Fri Jun  5 00:05:24 2015
 *
 * Original Table Header:
 *     Signature        "SSDT"
 *     Length           0x0000014A (330)
 *     Revision         0x02
 *     Checksum         0xAC
 *     OEM ID           "APPLE "
 *     OEM Table ID     "Optimus"
 *     OEM Revision     0x00001000 (4096)
 *     Compiler ID      "INTL"
 *     Compiler Version 0x20100331 (537920305)
 */

DefinitionBlock ("iASLNmPlzf.aml", "SSDT", 2, "APPLE ", "Optimus", 0x00001000)
{
    External (\_SB_.PCI0.RP05.PEGP._OFF, MethodObj)    // 0 Arguments
    External (\_SB_.PCI0.PEG0.PEGP._OFF, MethodObj)    // 0 Arguments
    External (\_SB_.PCI0.RP05.PEGP._PS3, MethodObj)    // 0 Arguments
    External (\_SB_.PCI0.RP05.PEGP._DSM, MethodObj)    // 4 Arguments
    External (\_SB_.PCI0.PEG0.PEGP._PS3, MethodObj)    // 0 Arguments
    External (\_SB_.PCI0.PEG0.PEGP._DSM, MethodObj)    // 4 Arguments

    Device (\_SB.OPT1)
    {
        Method (_INI, 0, NotSerialized)
        {
            \_SB.PCI0.PEG0.PEGP._DSM (Buffer (0x10)
                {
                    /* 0000 */    0xF8, 0xD8, 0x86, 0xA4, 0xDA, 0x0B, 0x1B, 0x47, 
                    /* 0008 */    0xA7, 0x2B, 0x60, 0x42, 0xA6, 0xB5, 0xBE, 0xE0
                }, 0x0100, 0x1A, Buffer (0x04)
                {
                    0x01, 0x00, 0x00, 0x03
                })
            If (One)
            {
                \_SB.PCI0.PEG0.PEGP._PS3 ()
            }
        }
    }

    Device (\_SB.OPT2)
    {
        Method (_INI, 0, NotSerialized)
        {
            \_SB.PCI0.RP05.PEGP._DSM (Buffer (0x10)
                {
                    /* 0000 */    0xF8, 0xD8, 0x86, 0xA4, 0xDA, 0x0B, 0x1B, 0x47, 
                    /* 0008 */    0xA7, 0x2B, 0x60, 0x42, 0xA6, 0xB5, 0xBE, 0xE0
                }, 0x0100, 0x1A, Buffer (0x04)
                {
                    0x01, 0x00, 0x00, 0x03
                })
            If (One)
            {
                \_SB.PCI0.RP05.PEGP._PS3 ()
            }
        }
    }

    Device (\_SB.ATI1)
    {
        Method (_INI, 0, NotSerialized)
        {
            \_SB.PCI0.PEG0.PEGP._OFF ()
        }
    }

    Device (\_SB.ATI2)
    {
        Method (_INI, 0, NotSerialized)
        {
            \_SB.PCI0.RP05.PEGP._OFF ()
        }
    }
}

