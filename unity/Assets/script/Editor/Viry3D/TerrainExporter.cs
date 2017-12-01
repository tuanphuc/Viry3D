using UnityEngine;
using UnityEditor;

public partial class Exporter {
	static void WriteTerrain(Terrain terrain) {
		var data = terrain.terrainData;

		m_writer.Write(terrain.lightmapIndex);
		WriteVector4(terrain.lightmapScaleOffset);

		Vector3 terrain_size = data.size;
		int heightmap_size = data.heightmapResolution;
		float[,] heightmap_data = data.GetHeights(0, 0, heightmap_size, heightmap_size);
		int alphamap_size = data.alphamapResolution;
		Texture2D[] alphamaps = data.alphamapTextures;
		int alphamap_count = alphamaps.Length;

		WriteVector3(terrain_size);
		m_writer.Write(heightmap_size);
		for (int i = 0; i < heightmap_size; i++)
		{
			for (int j = 0; j < heightmap_size; j++)
			{
				float height = heightmap_data[i, j];
				m_writer.Write(height);
			}
		}

		m_writer.Write(alphamap_size);
		m_writer.Write(alphamap_count);
		for (int i = 0; i < alphamap_count; i++)
		{
			WriteTexture(alphamaps[i], i);
		}
	}
}