package F1;

import android.graphics.Matrix;
import android.graphics.Rect;
import android.view.SurfaceControl;
import android.view.SyncRtSurfaceTransactionApplier;
import android.view.View;
import android.view.ViewGroup;
import com.android.launcher3.views.BaseDragLayer;
/* loaded from: classes.dex */
public final class f {

    /* renamed from: b  reason: collision with root package name */
    public final float f377b;

    /* renamed from: c  reason: collision with root package name */
    public final View f378c;

    /* renamed from: d  reason: collision with root package name */
    public final SyncRtSurfaceTransactionApplier f379d;

    /* renamed from: f  reason: collision with root package name */
    public final SurfaceControl f381f;

    /* renamed from: g  reason: collision with root package name */
    public final ViewGroup f382g;

    /* renamed from: h  reason: collision with root package name */
    public final A1.a f383h;

    /* renamed from: i  reason: collision with root package name */
    public final Rect f384i;

    /* renamed from: j  reason: collision with root package name */
    public final int f385j;

    /* renamed from: e  reason: collision with root package name */
    public final Matrix f380e = new Matrix();

    /* renamed from: a  reason: collision with root package name */
    public final float f376a = 0.0f;

    public f(float f4, View view, SurfaceControl surfaceControl, BaseDragLayer baseDragLayer, A1.a aVar, Rect rect, int i4) {
        this.f377b = f4;
        this.f378c = view;
        this.f379d = new SyncRtSurfaceTransactionApplier(view);
        this.f381f = surfaceControl;
        this.f382g = baseDragLayer;
        this.f383h = aVar;
        this.f384i = rect;
        this.f385j = i4;
    }
}
