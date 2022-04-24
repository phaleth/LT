using Avalonia;
using Avalonia.Controls;
using Avalonia.Controls.Shapes;
using Avalonia.Media;

namespace AvaloniaInWB.Views
{
    public partial class MainView : UserControl
    {
        public MainView()
        {
            InitializeComponent();

            Canvas canvas = this.Get<Canvas>("canvas");

            SolidColorBrush color = new(Color.Parse("#016360"));

            Point[] pts = new Point[]
            {
                new Point(6, 6),
                new Point(Width - 6, 6),
                new Point(Width / 2, Height - 6),
            };

            // outer triangle
            PaintLine(pts[0], pts[1]);
            PaintLine(pts[1], pts[2]);
            PaintLine(pts[2], pts[0]);

            PaintTriangles(pts, 7);

            void PaintTriangles(Point[] pts, int depth)
            {
                if (depth == 0)
                {
                    return;
                }

                depth--;
                PaintLine(GetMidPoint(pts[0], pts[1]), GetMidPoint(pts[0], pts[2]));
                PaintLine(GetMidPoint(pts[0], pts[1]), GetMidPoint(pts[1], pts[2]));
                PaintLine(GetMidPoint(pts[0], pts[2]), GetMidPoint(pts[1], pts[2]));

                PaintTriangles(
                    new Point[]
                    {
                        pts[0],
                        GetMidPoint(pts[0], pts[1]),
                        GetMidPoint(pts[0], pts[2]),
                    },
                    depth
                );
                PaintTriangles(
                    new Point[]
                    {
                        GetMidPoint(pts[0], pts[1]),
                        pts[1],
                        GetMidPoint(pts[1], pts[2]),
                    },
                    depth
                );
                PaintTriangles(
                    new Point[]
                    {
                        GetMidPoint(pts[0], pts[2]),
                        GetMidPoint(pts[1], pts[2]),
                        pts[2],
                    },
                    depth
                );
            }

            Point GetMidPoint(Point start, Point end)
            {
                return new Point(
                    (start.X + end.X) / 2,
                    (start.Y + end.Y) / 2
                );
            }

            void PaintLine(Point x, Point y)
            {
                canvas.Children.Add(
                    new Line()
                    {
                        Stroke = color,
                        StrokeThickness = 1,
                        StartPoint = x,
                        EndPoint = y
                    }
                );
            }
        }
    }
}
