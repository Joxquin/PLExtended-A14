package L1;

import android.graphics.PointF;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import java.util.ArrayList;
/* renamed from: L1.l  reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0057l implements P {

    /* renamed from: d  reason: collision with root package name */
    public static final C0057l f1194d = new C0057l();

    /* renamed from: a  reason: collision with root package name */
    public final PointF f1195a = new PointF();

    /* renamed from: c  reason: collision with root package name */
    public long f1197c = -1;

    /* renamed from: b  reason: collision with root package name */
    public final ViewGroup f1196b = null;

    @Override // L1.P
    public final void a() {
    }

    @Override // L1.P
    public final void b() {
    }

    @Override // L1.P
    public final void c() {
    }

    @Override // L1.P
    public final void d() {
    }

    @Override // L1.P
    public final void e(final com.google.android.apps.miphone.aiai.matchmaker.overview.ui.b bVar) {
        FrameLayout frameLayout = bVar.f6444b;
        ViewGroup viewGroup = this.f1196b;
        if (viewGroup != null) {
            viewGroup.removeAllViews();
            viewGroup.addView(frameLayout);
        }
        bVar.a();
        frameLayout.setLongClickable(true);
        frameLayout.setOnTouchListener(new View.OnTouchListener() { // from class: L1.j
            @Override // android.view.View.OnTouchListener
            public final boolean onTouch(View view, MotionEvent motionEvent) {
                C0057l c0057l = C0057l.this;
                com.google.android.apps.miphone.aiai.matchmaker.overview.ui.b bVar2 = bVar;
                c0057l.getClass();
                int action = motionEvent.getAction();
                if (action == 0) {
                    if (c0057l.f1197c < 0) {
                        c0057l.f1197c = System.currentTimeMillis();
                    }
                    PointF pointF = c0057l.f1195a;
                    pointF.set(motionEvent.getX(), motionEvent.getY());
                    ArrayList arrayList = new ArrayList(1);
                    arrayList.add(motionEvent);
                    bVar2.f6465w = arrayList;
                    bVar2.f6450h.d(pointF);
                    bVar2.g(pointF, false, false);
                } else if (action == 1) {
                    if (c0057l.f1197c > 0) {
                        bVar2.a();
                    }
                    c0057l.f1197c = -1L;
                }
                return view.onTouchEvent(motionEvent);
            }
        });
        frameLayout.setOnLongClickListener(new View.OnLongClickListener() { // from class: L1.k
            @Override // android.view.View.OnLongClickListener
            public final boolean onLongClick(View view) {
                C0057l c0057l = C0057l.this;
                com.google.android.apps.miphone.aiai.matchmaker.overview.ui.b bVar2 = bVar;
                c0057l.f1197c = -1L;
                bVar2.b(false, false);
                return true;
            }
        });
    }

    @Override // L1.P
    public final void f() {
    }
}
