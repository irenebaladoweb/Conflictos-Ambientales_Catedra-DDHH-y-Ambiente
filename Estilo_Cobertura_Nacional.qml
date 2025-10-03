<!DOCTYPE qgis PUBLIC 'http://mrcc.com/qgis.dtd' 'SYSTEM'>
<qgis styleCategories="AllStyleCategories" minScale="1e+08" hasScaleBasedVisibilityFlag="0" maxScale="0" version="3.22.4-Białowieża">
  <flags>
    <Identifiable>1</Identifiable>
    <Removable>1</Removable>
    <Searchable>0</Searchable>
    <Private>0</Private>
  </flags>
  <temporal mode="0" enabled="0" fetchMode="0">
    <fixedRange>
      <start></start>
      <end></end>
    </fixedRange>
  </temporal>
  <customproperties>
    <Option type="Map">
      <Option value="false" name="WMSBackgroundLayer" type="bool"/>
      <Option value="false" name="WMSPublishDataSourceUrl" type="bool"/>
      <Option value="0" name="embeddedWidgets/count" type="int"/>
      <Option value="Value" name="identify/format" type="QString"/>
    </Option>
  </customproperties>
  <pipe-data-defined-properties>
    <Option type="Map">
      <Option value="" name="name" type="QString"/>
      <Option name="properties"/>
      <Option value="collection" name="type" type="QString"/>
    </Option>
  </pipe-data-defined-properties>
  <pipe>
    <provider>
      <resampling zoomedOutResamplingMethod="nearestNeighbour" enabled="false" maxOversampling="2" zoomedInResamplingMethod="nearestNeighbour"/>
    </provider>
    <rasterrenderer classificationMin="1" opacity="1" classificationMax="7" nodataColor="" type="singlebandpseudocolor" alphaBand="-1" band="1">
      <rasterTransparency/>
      <minMaxOrigin>
        <limits>MinMax</limits>
        <extent>WholeRaster</extent>
        <statAccuracy>Estimated</statAccuracy>
        <cumulativeCutLower>0.02</cumulativeCutLower>
        <cumulativeCutUpper>0.98</cumulativeCutUpper>
        <stdDevFactor>2</stdDevFactor>
      </minMaxOrigin>
      <rastershader>
        <colorrampshader clip="0" maximumValue="7" colorRampType="DISCRETE" minimumValue="1" labelPrecision="0" classificationMode="2">
          <colorramp name="[source]" type="gradient">
            <Option type="Map">
              <Option value="62,142,196,255" name="color1" type="QString"/>
              <Option value="9,241,249,255" name="color2" type="QString"/>
              <Option value="0" name="discrete" type="QString"/>
              <Option value="gradient" name="rampType" type="QString"/>
              <Option value="0.166667;223,51,38,255:0.333333;67,175,73,255:0.5;255,253,211,255:0.666667;246,213,130,255:0.833333;213,217,221,255" name="stops" type="QString"/>
            </Option>
            <prop v="62,142,196,255" k="color1"/>
            <prop v="9,241,249,255" k="color2"/>
            <prop v="0" k="discrete"/>
            <prop v="gradient" k="rampType"/>
            <prop v="0.166667;223,51,38,255:0.333333;67,175,73,255:0.5;255,253,211,255:0.666667;246,213,130,255:0.833333;213,217,221,255" k="stops"/>
          </colorramp>
          <item value="1" label="1- Agua" alpha="255" color="#3e8ec4"/>
          <item value="2" label="2 - Froestación" alpha="255" color="#df3326"/>
          <item value="3" label=" 3 - Bosque nativo" alpha="255" color="#43af49"/>
          <item value="4" label="4 - Campo Natural/pradera" alpha="255" color="#fffdd3"/>
          <item value="5" label="5 - Agricola" alpha="255" color="#f6d582"/>
          <item value="6" label="6- Suelo desnudo/ Infraestructura" alpha="255" color="#d5d9dd"/>
          <item value="7" label="7 - Humedales" alpha="255" color="#09f1f9"/>
          <rampLegendSettings prefix="" suffix="" orientation="2" useContinuousLegend="1" minimumLabel="" direction="0" maximumLabel="">
            <numericFormat id="basic">
              <Option type="Map">
                <Option value="" name="decimal_separator" type="QChar"/>
                <Option value="6" name="decimals" type="int"/>
                <Option value="0" name="rounding_type" type="int"/>
                <Option value="false" name="show_plus" type="bool"/>
                <Option value="true" name="show_thousand_separator" type="bool"/>
                <Option value="false" name="show_trailing_zeros" type="bool"/>
                <Option value="" name="thousand_separator" type="QChar"/>
              </Option>
            </numericFormat>
          </rampLegendSettings>
        </colorrampshader>
      </rastershader>
    </rasterrenderer>
    <brightnesscontrast contrast="0" gamma="1" brightness="0"/>
    <huesaturation saturation="0" colorizeBlue="128" invertColors="0" colorizeStrength="100" grayscaleMode="0" colorizeRed="255" colorizeGreen="128" colorizeOn="0"/>
    <rasterresampler maxOversampling="2"/>
    <resamplingStage>resamplingFilter</resamplingStage>
  </pipe>
  <blendMode>0</blendMode>
</qgis>
