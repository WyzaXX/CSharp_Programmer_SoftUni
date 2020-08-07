﻿using CarDealer.Models;
using System.Xml.Serialization;

namespace CarDealer.Dtos.Export
{
    [XmlType("car")]
    public class ExportCarsWithPartsDto
    {
        [XmlAttribute("make")]
        public string Make { get; set; }

        [XmlAttribute("model")]
        public string Model { get; set; }

        [XmlAttribute("travelled-distance")]
        public long TravelledDistance { get; set; }

        [XmlArray("parts")]
        public Parts[] Parts { get; set; }
    }

    [XmlType("part")]
    public class Parts
    {
        [XmlAttribute("name")]
        public string Name{ get; set; }

        [XmlAttribute("price")]
        public decimal Price{ get; set; }
    }
}
