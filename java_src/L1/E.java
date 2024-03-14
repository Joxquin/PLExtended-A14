package L1;

import android.graphics.Rect;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewConfiguration;
import com.android.launcher3.logging.StatsLogManager;
/* loaded from: classes.dex */
public final class E implements View.OnTouchListener {

    /* renamed from: d  reason: collision with root package name */
    public final int f1065d;

    /* renamed from: e  reason: collision with root package name */
    public final /* synthetic */ C0067w f1066e;

    /* renamed from: f  reason: collision with root package name */
    public final /* synthetic */ X1.f f1067f;

    /* renamed from: g  reason: collision with root package name */
    public final /* synthetic */ Rect f1068g;

    /* renamed from: h  reason: collision with root package name */
    public final /* synthetic */ V1.u f1069h;

    /* renamed from: i  reason: collision with root package name */
    public final /* synthetic */ H f1070i;

    public E(H h4, C0067w c0067w, X1.f fVar, Rect rect, V1.u uVar) {
        this.f1070i = h4;
        this.f1066e = c0067w;
        this.f1067f = fVar;
        this.f1068g = rect;
        this.f1069h = uVar;
        this.f1065d = ViewConfiguration.get(h4.getContext()).getScaledTouchSlop();
    }

    @Override // android.view.View.OnTouchListener
    public final boolean onTouch(View view, MotionEvent motionEvent) {
        int action = motionEvent.getAction();
        if (action == 0) {
            this.f1070i.f1083d = motionEvent.getX();
            this.f1070i.f1084e = motionEvent.getY();
            if (this.f1066e.f1282p) {
                view.getParent().requestDisallowInterceptTouchEvent(true);
            }
        } else if (action != 2) {
            if (view != null && view.getParent() != null) {
                view.getParent().requestDisallowInterceptTouchEvent(false);
            }
        } else if ((Math.abs(this.f1070i.f1083d - motionEvent.getX()) > this.f1065d || Math.abs(this.f1070i.f1084e - motionEvent.getY()) > this.f1065d) && this.f1066e.f1282p) {
            H.a(this.f1070i, view, this.f1067f.i(this.f1068g), this.f1066e, motionEvent.getX(), motionEvent.getY());
            this.f1069h.f1860a.logger().log(StatsLogManager.LauncherEvent.LAUNCHER_OVERVIEW_SHARING_IMAGE_DRAG);
        }
        return false;
    }
}
