package H1;

import android.graphics.Point;
import android.util.RotationUtils;
import android.view.SurfaceControl;
/* loaded from: classes.dex */
public final class a {

    /* renamed from: a  reason: collision with root package name */
    public SurfaceControl f532a = null;

    public final void a(SurfaceControl.Transaction transaction, SurfaceControl surfaceControl, int i4, float f4, float f5) {
        if (i4 == 0) {
            return;
        }
        SurfaceControl build = new SurfaceControl.Builder().setName("Transition Unrotate").setContainerLayer().setParent(surfaceControl).build();
        this.f532a = build;
        RotationUtils.rotateSurface(transaction, build, i4);
        Point point = new Point(0, 0);
        if (i4 % 2 != 0) {
            f5 = f4;
            f4 = f5;
        }
        RotationUtils.rotatePoint(point, i4, (int) f4, (int) f5);
        transaction.setPosition(this.f532a, point.x, point.y);
        transaction.show(this.f532a);
    }
}
