import re
import numpy as np
import pandas as pd

# Sample data: paste your entire SQL-like block as a string here
raw_data = """
(`relate_id`, `post_id_1`, `post_id_2`, `views_1`, `views_2`) VALUES (1, 15, 21, 88, 90);
(`relate_id`, `post_id_1`, `post_id_2`, `views_1`, `views_2`) VALUES (2, 4, 64, 112, 92);
(`relate_id`, `post_id_1`, `post_id_2`, `views_1`, `views_2`) VALUES (3, 43, 46, 102, 60);
(`relate_id`, `post_id_1`, `post_id_2`, `views_1`, `views_2`) VALUES (1, 15, 21, 88, 90);
 (`relate_id`, `post_id_1`, `post_id_2`, `views_1`, `views_2`) VALUES (2, 4, 64, 112, 92);
 (`relate_id`, `post_id_1`, `post_id_2`, `views_1`, `views_2`) VALUES (3, 43, 46, 102, 60);
 (`relate_id`, `post_id_1`, `post_id_2`, `views_1`, `views_2`) VALUES (4, 35, 42, 83, 69);
 (`relate_id`, `post_id_1`, `post_id_2`, `views_1`, `views_2`) VALUES (5, 24, 42, 101, 69);
 (`relate_id`, `post_id_1`, `post_id_2`, `views_1`, `views_2`) VALUES (6, 25, 41, 55, 71);
 (`relate_id`, `post_id_1`, `post_id_2`, `views_1`, `views_2`) VALUES (7, 65, 70, 64, 65);
 (`relate_id`, `post_id_1`, `post_id_2`, `views_1`, `views_2`) VALUES (8, 39, 60, 46, 80);
 (`relate_id`, `post_id_1`, `post_id_2`, `views_1`, `views_2`) VALUES (9, 49, 62, 62, 77);
 (`relate_id`, `post_id_1`, `post_id_2`, `views_1`, `views_2`) VALUES (10, 14, 40, 67, 85);
 (`relate_id`, `post_id_1`, `post_id_2`, `views_1`, `views_2`) VALUES (11, 6, 11, 60, 58);
 (`relate_id`, `post_id_1`, `post_id_2`, `views_1`, `views_2`) VALUES (12, 7, 10, 132, 115);
 (`relate_id`, `post_id_1`, `post_id_2`, `views_1`, `views_2`) VALUES (13, 17, 60, 54, 80);
 (`relate_id`, `post_id_1`, `post_id_2`, `views_1`, `views_2`) VALUES (14, 42, 59, 69, 59);
 (`relate_id`, `post_id_1`, `post_id_2`, `views_1`, `views_2`) VALUES (15, 20, 31, 45, 40);
 (`relate_id`, `post_id_1`, `post_id_2`, `views_1`, `views_2`) VALUES (16, 32, 60, 44, 80);
 (`relate_id`, `post_id_1`, `post_id_2`, `views_1`, `views_2`) VALUES (17, 5, 30, 89, 80);
 (`relate_id`, `post_id_1`, `post_id_2`, `views_1`, `views_2`) VALUES (18, 4, 32, 112, 44);
 (`relate_id`, `post_id_1`, `post_id_2`, `views_1`, `views_2`) VALUES (19, 29, 70, 57, 65);
 (`relate_id`, `post_id_1`, `post_id_2`, `views_1`, `views_2`) VALUES (20, 56, 60, 42, 80);
 (`relate_id`, `post_id_1`, `post_id_2`, `views_1`, `views_2`) VALUES (21, 33, 40, 63, 85);
 (`relate_id`, `post_id_1`, `post_id_2`, `views_1`, `views_2`) VALUES (22, 27, 54, 52, 58);
 (`relate_id`, `post_id_1`, `post_id_2`, `views_1`, `views_2`) VALUES (23, 13, 37, 73, 70);
 (`relate_id`, `post_id_1`, `post_id_2`, `views_1`, `views_2`) VALUES (24, 30, 50, 80, 55);
 (`relate_id`, `post_id_1`, `post_id_2`, `views_1`, `views_2`) VALUES (25, 44, 49, 95, 62);
 (`relate_id`, `post_id_1`, `post_id_2`, `views_1`, `views_2`) VALUES (26, 28, 62, 61, 77);
 (`relate_id`, `post_id_1`, `post_id_2`, `views_1`, `views_2`) VALUES (27, 11, 55, 58, 66);
 (`relate_id`, `post_id_1`, `post_id_2`, `views_1`, `views_2`) VALUES (28, 29, 45, 57, 87);
 (`relate_id`, `post_id_1`, `post_id_2`, `views_1`, `views_2`) VALUES (29, 3, 26, 141, 69);
 (`relate_id`, `post_id_1`, `post_id_2`, `views_1`, `views_2`) VALUES (30, 15, 55, 88, 66);
 (`relate_id`, `post_id_1`, `post_id_2`, `views_1`, `views_2`) VALUES (31, 35, 67, 83, 50);
 (`relate_id`, `post_id_1`, `post_id_2`, `views_1`, `views_2`) VALUES (32, 29, 63, 57, 85);
 (`relate_id`, `post_id_1`, `post_id_2`, `views_1`, `views_2`) VALUES (33, 18, 60, 66, 80);
 (`relate_id`, `post_id_1`, `post_id_2`, `views_1`, `views_2`) VALUES (34, 23, 56, 92, 42);
 (`relate_id`, `post_id_1`, `post_id_2`, `views_1`, `views_2`) VALUES (35, 62, 69, 77, 60);
 (`relate_id`, `post_id_1`, `post_id_2`, `views_1`, `views_2`) VALUES (36, 2, 36, 97, 88);
 (`relate_id`, `post_id_1`, `post_id_2`, `views_1`, `views_2`) VALUES (37, 25, 38, 55, 61);
 (`relate_id`, `post_id_1`, `post_id_2`, `views_1`, `views_2`) VALUES (38, 36, 68, 88, 42);
 (`relate_id`, `post_id_1`, `post_id_2`, `views_1`, `views_2`) VALUES (39, 1, 46, 123, 60);
 (`relate_id`, `post_id_1`, `post_id_2`, `views_1`, `views_2`) VALUES (40, 2, 54, 97, 58);
 (`relate_id`, `post_id_1`, `post_id_2`, `views_1`, `views_2`) VALUES (41, 29, 38, 57, 61);
 (`relate_id`, `post_id_1`, `post_id_2`, `views_1`, `views_2`) VALUES (42, 20, 35, 45, 83);
 (`relate_id`, `post_id_1`, `post_id_2`, `views_1`, `views_2`) VALUES (43, 6, 45, 60, 87);
 (`relate_id`, `post_id_1`, `post_id_2`, `views_1`, `views_2`) VALUES (44, 34, 46, 98, 60);
 (`relate_id`, `post_id_1`, `post_id_2`, `views_1`, `views_2`) VALUES (45, 1, 21, 123, 90);
 (`relate_id`, `post_id_1`, `post_id_2`, `views_1`, `views_2`) VALUES (46, 45, 55, 87, 66);
 (`relate_id`, `post_id_1`, `post_id_2`, `views_1`, `views_2`) VALUES (47, 11, 32, 58, 44);
 (`relate_id`, `post_id_1`, `post_id_2`, `views_1`, `views_2`) VALUES (48, 8, 54, 74, 58);
 (`relate_id`, `post_id_1`, `post_id_2`, `views_1`, `views_2`) VALUES (49, 42, 56, 69, 42);
 (`relate_id`, `post_id_1`, `post_id_2`, `views_1`, `views_2`) VALUES (50, 3, 12, 141, 106);
 (`relate_id`, `post_id_1`, `post_id_2`, `views_1`, `views_2`) VALUES (51, 20, 28, 45, 61);
 (`relate_id`, `post_id_1`, `post_id_2`, `views_1`, `views_2`) VALUES (52, 44, 65, 95, 64);
 (`relate_id`, `post_id_1`, `post_id_2`, `views_1`, `views_2`) VALUES (53, 38, 61, 61, 63);
 (`relate_id`, `post_id_1`, `post_id_2`, `views_1`, `views_2`) VALUES (54, 10, 26, 115, 69);
 (`relate_id`, `post_id_1`, `post_id_2`, `views_1`, `views_2`) VALUES (55, 24, 25, 101, 55);
 (`relate_id`, `post_id_1`, `post_id_2`, `views_1`, `views_2`) VALUES (56, 36, 54, 88, 58);
 (`relate_id`, `post_id_1`, `post_id_2`, `views_1`, `views_2`) VALUES (57, 11, 34, 58, 98);
 (`relate_id`, `post_id_1`, `post_id_2`, `views_1`, `views_2`) VALUES (58, 54, 69, 58, 60);
 (`relate_id`, `post_id_1`, `post_id_2`, `views_1`, `views_2`) VALUES (59, 16, 30, 49, 80);
 (`relate_id`, `post_id_1`, `post_id_2`, `views_1`, `views_2`) VALUES (60, 30, 47, 80, 72);
 (`relate_id`, `post_id_1`, `post_id_2`, `views_1`, `views_2`) VALUES (61, 26, 34, 69, 98);
 (`relate_id`, `post_id_1`, `post_id_2`, `views_1`, `views_2`) VALUES (62, 14, 32, 67, 44);
 (`relate_id`, `post_id_1`, `post_id_2`, `views_1`, `views_2`) VALUES (63, 8, 13, 74, 73);
 (`relate_id`, `post_id_1`, `post_id_2`, `views_1`, `views_2`) VALUES (64, 4, 40, 112, 85);
 (`relate_id`, `post_id_1`, `post_id_2`, `views_1`, `views_2`) VALUES (65, 8, 22, 74, 134);
 (`relate_id`, `post_id_1`, `post_id_2`, `views_1`, `views_2`) VALUES (66, 10, 19, 115, 101);
 (`relate_id`, `post_id_1`, `post_id_2`, `views_1`, `views_2`) VALUES (67, 16, 69, 49, 60);
 (`relate_id`, `post_id_1`, `post_id_2`, `views_1`, `views_2`) VALUES (68, 22, 48, 134, 85);
 (`relate_id`, `post_id_1`, `post_id_2`, `views_1`, `views_2`) VALUES (69, 53, 63, 49, 85);
 (`relate_id`, `post_id_1`, `post_id_2`, `views_1`, `views_2`) VALUES (70, 47, 56, 72, 42);
 (`relate_id`, `post_id_1`, `post_id_2`, `views_1`, `views_2`) VALUES (71, 9, 48, 55, 85);
 (`relate_id`, `post_id_1`, `post_id_2`, `views_1`, `views_2`) VALUES (72, 17, 61, 54, 63);
 (`relate_id`, `post_id_1`, `post_id_2`, `views_1`, `views_2`) VALUES (73, 32, 52, 44, 41);
 (`relate_id`, `post_id_1`, `post_id_2`, `views_1`, `views_2`) VALUES (74, 21, 31, 90, 40);
 (`relate_id`, `post_id_1`, `post_id_2`, `views_1`, `views_2`) VALUES (75, 33, 60, 63, 80);
 (`relate_id`, `post_id_1`, `post_id_2`, `views_1`, `views_2`) VALUES (76, 4, 33, 112, 63);
 (`relate_id`, `post_id_1`, `post_id_2`, `views_1`, `views_2`) VALUES (77, 27, 28, 52, 61);
 (`relate_id`, `post_id_1`, `post_id_2`, `views_1`, `views_2`) VALUES (78, 39, 57, 46, 73);
 (`relate_id`, `post_id_1`, `post_id_2`, `views_1`, `views_2`) VALUES (79, 17, 36, 54, 88);
 (`relate_id`, `post_id_1`, `post_id_2`, `views_1`, `views_2`) VALUES (80, 10, 30, 115, 80);
 (`relate_id`, `post_id_1`, `post_id_2`, `views_1`, `views_2`) VALUES (81, 36, 58, 88, 68);
 (`relate_id`, `post_id_1`, `post_id_2`, `views_1`, `views_2`) VALUES (82, 28, 63, 61, 85);
 (`relate_id`, `post_id_1`, `post_id_2`, `views_1`, `views_2`) VALUES (83, 4, 63, 112, 85);
 (`relate_id`, `post_id_1`, `post_id_2`, `views_1`, `views_2`) VALUES (84, 60, 70, 80, 65);
 (`relate_id`, `post_id_1`, `post_id_2`, `views_1`, `views_2`) VALUES (85, 33, 62, 63, 77);
 (`relate_id`, `post_id_1`, `post_id_2`, `views_1`, `views_2`) VALUES (86, 35, 59, 83, 59);
 (`relate_id`, `post_id_1`, `post_id_2`, `views_1`, `views_2`) VALUES (87, 39, 50, 46, 55);
 (`relate_id`, `post_id_1`, `post_id_2`, `views_1`, `views_2`) VALUES (88, 25, 67, 55, 50);
 (`relate_id`, `post_id_1`, `post_id_2`, `views_1`, `views_2`) VALUES (89, 10, 23, 115, 92);
 (`relate_id`, `post_id_1`, `post_id_2`, `views_1`, `views_2`) VALUES (90, 53, 58, 49, 68);
 (`relate_id`, `post_id_1`, `post_id_2`, `views_1`, `views_2`) VALUES (91, 17, 38, 54, 61);
 (`relate_id`, `post_id_1`, `post_id_2`, `views_1`, `views_2`) VALUES (92, 22, 52, 134, 41);
 (`relate_id`, `post_id_1`, `post_id_2`, `views_1`, `views_2`) VALUES (93, 11, 31, 58, 40);
 (`relate_id`, `post_id_1`, `post_id_2`, `views_1`, `views_2`) VALUES (94, 29, 67, 57, 50);
 (`relate_id`, `post_id_1`, `post_id_2`, `views_1`, `views_2`) VALUES (95, 37, 59, 70, 59);
 (`relate_id`, `post_id_1`, `post_id_2`, `views_1`, `views_2`) VALUES (96, 2, 37, 97, 70);
 (`relate_id`, `post_id_1`, `post_id_2`, `views_1`, `views_2`) VALUES (97, 61, 62, 63, 77);
 (`relate_id`, `post_id_1`, `post_id_2`, `views_1`, `views_2`) VALUES (98, 16, 39, 49, 46);
 (`relate_id`, `post_id_1`, `post_id_2`, `views_1`, `views_2`) VALUES (99, 35, 52, 83, 41);
 (`relate_id`, `post_id_1`, `post_id_2`, `views_1`, `views_2`) VALUES (100, 16, 57, 49, 73);
 (`relate_id`, `post_id_1`, `post_id_2`, `views_1`, `views_2`) VALUES (101, 20, 39, 45, 46);
 (`relate_id`, `post_id_1`, `post_id_2`, `views_1`, `views_2`) VALUES (102, 11, 70, 58, 65);
 (`relate_id`, `post_id_1`, `post_id_2`, `views_1`, `views_2`) VALUES (103, 36, 44, 88, 95);
 (`relate_id`, `post_id_1`, `post_id_2`, `views_1`, `views_2`) VALUES (104, 11, 33, 58, 63);
 (`relate_id`, `post_id_1`, `post_id_2`, `views_1`, `views_2`) VALUES (105, 3, 50, 141, 55);
 (`relate_id`, `post_id_1`, `post_id_2`, `views_1`, `views_2`) VALUES (106, 41, 43, 71, 102);
 (`relate_id`, `post_id_1`, `post_id_2`, `views_1`, `views_2`) VALUES (107, 18, 20, 66, 45);
 (`relate_id`, `post_id_1`, `post_id_2`, `views_1`, `views_2`) VALUES (108, 9, 54, 55, 58);
 (`relate_id`, `post_id_1`, `post_id_2`, `views_1`, `views_2`) VALUES (109, 55, 69, 66, 60);
 (`relate_id`, `post_id_1`, `post_id_2`, `views_1`, `views_2`) VALUES (110, 44, 57, 95, 73);
 (`relate_id`, `post_id_1`, `post_id_2`, `views_1`, `views_2`) VALUES (111, 2, 69, 97, 60);
 (`relate_id`, `post_id_1`, `post_id_2`, `views_1`, `views_2`) VALUES (112, 34, 49, 98, 62);
 (`relate_id`, `post_id_1`, `post_id_2`, `views_1`, `views_2`) VALUES (113, 28, 42, 61, 69);
 (`relate_id`, `post_id_1`, `post_id_2`, `views_1`, `views_2`) VALUES (114, 20, 59, 45, 59);
 (`relate_id`, `post_id_1`, `post_id_2`, `views_1`, `views_2`) VALUES (115, 4, 51, 112, 79);
 (`relate_id`, `post_id_1`, `post_id_2`, `views_1`, `views_2`) VALUES (116, 3, 61, 141, 63);
 (`relate_id`, `post_id_1`, `post_id_2`, `views_1`, `views_2`) VALUES (117, 4, 69, 112, 60);
 (`relate_id`, `post_id_1`, `post_id_2`, `views_1`, `views_2`) VALUES (118, 44, 50, 95, 55);
 (`relate_id`, `post_id_1`, `post_id_2`, `views_1`, `views_2`) VALUES (119, 52, 63, 41, 85);
 (`relate_id`, `post_id_1`, `post_id_2`, `views_1`, `views_2`) VALUES (120, 35, 56, 83, 42);
 (`relate_id`, `post_id_1`, `post_id_2`, `views_1`, `views_2`) VALUES (121, 23, 39, 92, 46);
 (`relate_id`, `post_id_1`, `post_id_2`, `views_1`, `views_2`) VALUES (122, 49, 58, 62, 68);
 (`relate_id`, `post_id_1`, `post_id_2`, `views_1`, `views_2`) VALUES (123, 40, 55, 85, 66);
 (`relate_id`, `post_id_1`, `post_id_2`, `views_1`, `views_2`) VALUES (124, 31, 61, 40, 63);
 (`relate_id`, `post_id_1`, `post_id_2`, `views_1`, `views_2`) VALUES (125, 6, 7, 60, 132);
 (`relate_id`, `post_id_1`, `post_id_2`, `views_1`, `views_2`) VALUES (126, 7, 70, 132, 65);
 (`relate_id`, `post_id_1`, `post_id_2`, `views_1`, `views_2`) VALUES (127, 14, 63, 67, 85);
 (`relate_id`, `post_id_1`, `post_id_2`, `views_1`, `views_2`) VALUES (128, 15, 28, 88, 61);
 (`relate_id`, `post_id_1`, `post_id_2`, `views_1`, `views_2`) VALUES (129, 58, 63, 68, 85);
 (`relate_id`, `post_id_1`, `post_id_2`, `views_1`, `views_2`) VALUES (130, 7, 24, 132, 101);
 (`relate_id`, `post_id_1`, `post_id_2`, `views_1`, `views_2`) VALUES (131, 43, 53, 102, 49);
 (`relate_id`, `post_id_1`, `post_id_2`, `views_1`, `views_2`) VALUES (132, 61, 68, 63, 42);
 (`relate_id`, `post_id_1`, `post_id_2`, `views_1`, `views_2`) VALUES (133, 16, 54, 49, 58);
 (`relate_id`, `post_id_1`, `post_id_2`, `views_1`, `views_2`) VALUES (134, 49, 51, 62, 79);
 (`relate_id`, `post_id_1`, `post_id_2`, `views_1`, `views_2`) VALUES (135, 12, 32, 106, 44);
 (`relate_id`, `post_id_1`, `post_id_2`, `views_1`, `views_2`) VALUES (136, 40, 48, 85, 85);
 (`relate_id`, `post_id_1`, `post_id_2`, `views_1`, `views_2`) VALUES (137, 9, 15, 55, 88);
 (`relate_id`, `post_id_1`, `post_id_2`, `views_1`, `views_2`) VALUES (138, 57, 64, 73, 92);
 (`relate_id`, `post_id_1`, `post_id_2`, `views_1`, `views_2`) VALUES (139, 37, 40, 70, 85);
 (`relate_id`, `post_id_1`, `post_id_2`, `views_1`, `views_2`) VALUES (140, 6, 9, 60, 55);
... # continue the pattern here with all 50 rows
"""


# Extract all tuples using regex
pattern = r"\(\d+, (\d+), (\d+), (\d+), (\d+)\)"
matches = re.findall(pattern, raw_data)

# Convert to list of tuples: (post_id_1, post_id_2, avg_views)
relations = []
post_ids = set()

for m in matches:
    p1, p2, v1, v2 = map(int, m)
    avg_view = (v1 + v2) / 2
    relations.append((p1, p2, avg_view))
    post_ids.update([p1, p2])

# Create index mapping
post_ids = sorted(post_ids)
index = {post_id: i for i, post_id in enumerate(post_ids)}

# Initialize matrix
size = len(post_ids)
matrix = np.zeros((size, size))

# Fill matrix
for p1, p2, avg_view in relations:
    i, j = index[p1], index[p2]
    matrix[i][j] = avg_view
    matrix[j][i] = avg_view  # assuming symmetric relationship

# Optional: pretty-print as DataFrame
df = pd.DataFrame(matrix, index=post_ids, columns=post_ids)
print(df)
