// Diccionario de estilos y rutas de iconos SVG (con los nombres y colores corregidos)
const categorias = {
  "Biodiversidad y conservación": {
    color: "#0fe978", // verde
    svg: "iconos/qgs_icon-FAA.svg"
  },
  "Combustibles fósiles y Cambio Climático - Energía": {
    color: "#000000", // negro
    svg: "iconos/qgs_Oil-facility.svg"
  },
  "Conflictos por tierra y biomasa": {
    color: "#a0522d", // marrón
    svg: "iconos/qgs_landuse.svg"
  },
  "Gestión de basura": {
    color: "#827e35", // verde musgo
    svg: "iconos/qgs_waste-basket.svg"
  },
  "Gestión del agua": {
    color: "#1de9b6", // turquesa
    svg: "iconos/qgs_waterfall.svg"
  },
  "Industrias y utilidades": {
    color: "#b0b0b0", // gris
    svg: "iconos/qgs_industry.svg"
  },
  "Infraestructura": {
    color: "#ff0000", // rojo
    svg: "iconos/qgs_Infrastructure.svg"
  },
  "Minería y extracción": {
    color: "#ff7f00", // naranja
    svg: "iconos/poi_mine.svg"
  },
  "Turismo y recreación": {
    color: "#a817bb", // violeta
    svg: "iconos/qgs_beach.svg"
  },
  "Nuclear": {
    color: "#ece920", // amarillo
    svg: "iconos/qgs_icon-FAK.svg"
  },
  "Otros": {
    color: "#fe00ae", // rosa
    svg: "iconos/qgs_Conflict.svg"
  }
};

// Función para agregar GeoJSON con simbología personalizada
function addGeoJsonWithStyle(geojson) {
  L.geoJSON(geojson, {
    pointToLayer: function(feature, latlng) {
      // Campo de categoría, asegúrate que coincida con tu GeoJSON
      const categoria = feature.properties._Field9;
      const estilo = categorias[categoria];
      if (estilo && estilo.svg) {
        // Marcador con SVG y círculo de fondo (DivIcon)
        const html =
          `<div style="
            position: relative;
            width: 32px;
            height: 32px;
            display: flex;
            align-items: center;
            justify-content: center;
          ">
            <div style="
              background: ${estilo.color};
              border-radius: 50%;
              width: 24px;
              height: 24px;
              position: absolute;
              left: 4px; top: 4px;
              box-shadow: 0 0 2px #333;
            "></div>
            <img src="${estilo.svg}" style="
              width: 18px;
              height: 18px;
              position: absolute;
              left: 7px; top: 7px;
              pointer-events: none;
            ">
          </div>`;

        return L.marker(latlng, {
          icon: L.divIcon({
            html: html,
            className: '',
            iconSize: [32, 32],
            iconAnchor: [16, 16],
            popupAnchor: [0, -16]
          })
        });
      }
      // Si no hay categoría, círculo simple
      return L.circleMarker(latlng, {
        radius: 8,
        fillColor: estilo ? estilo.color : "#3388ff",
        color: "#333",
        weight: 1,
        opacity: 1,
        fillOpacity: 0.8
      });
    },
    onEachFeature: function(feature, layer) {
      let popupContent = "";
      Object.keys(feature.properties).forEach(function(key){
        popupContent += `<b>${key}:</b> ${feature.properties[key]}<br>`;
      });
      layer.bindPopup(popupContent);
    }
  }).addTo(map);
}

// Evento de carga de GeoJSON
document.getElementById('geojson-upload').addEventListener('change', function(e) {
  var file = e.target.files[0];
  if (!file) return;
  var reader = new FileReader();
  reader.onload = function(event) {
    try {
      var geojson = JSON.parse(event.target.result);
      addGeoJsonWithStyle(geojson);
      map.fitBounds(L.geoJSON(
