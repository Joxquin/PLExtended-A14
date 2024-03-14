package A1;

import android.graphics.Outline;
import android.graphics.Path;
import android.graphics.drawable.shapes.PathShape;
/* loaded from: classes.dex */
public final class b extends PathShape {

    /* renamed from: e  reason: collision with root package name */
    public static final /* synthetic */ int f79e = 0;

    /* renamed from: d  reason: collision with root package name */
    public final Path f80d;

    public b(Path path, float f4, float f5) {
        super(path, f4, f5);
        this.f80d = path;
    }

    @Override // android.graphics.drawable.shapes.Shape
    public final void getOutline(Outline outline) {
        outline.setPath(this.f80d);
    }
}
