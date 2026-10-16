<svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 1000 300" width="1000" height="300">
  <defs>
    <linearGradient id="bg" x1="0" y1="0" x2="1" y2="1">
      <stop offset="0%" stop-color="#020b06"/>
      <stop offset="100%" stop-color="#071c10"/>
    </linearGradient>
    <pattern id="code" width="100" height="180" patternUnits="userSpaceOnUse">
      <text x="8" y="20" fill="#00ff66" font-family="monospace" font-size="13">
        <tspan x="8" dy="0">01010</tspan>
        <tspan x="8" dy="20">10101</tspan>
        <tspan x="8" dy="20">if (x)</tspan>
        <tspan x="8" dy="20">{code}</tspan>
        <tspan x="8" dy="20">11001</tspan>
        <tspan x="8" dy="20">0xFF;</tspan>
        <animateTransform attributeName="transform"
          type="translate" from="0 0" to="0 -180"
          dur="4s" repeatCount="indefinite"/>
      </text>
    </pattern>
  </defs>

  <rect width="1000" height="300" fill="url(#bg)"/>
  <rect width="1000" height="300" fill="url(#code)" opacity=".38"/>

  <g fill="#00ff66" font-family="monospace" text-anchor="middle">
    <text x="500" y="135" font-size="43" font-weight="bold"
      stroke="#001b0b" stroke-width="2" paint-order="stroke">
      Theo Developer
    </text>
    <text x="500" y="170" font-size="15" fill="#8affad">
      &gt; code • learn • build_
    </text>
  </g>
</svg>
