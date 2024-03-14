package P1;

import android.animation.Animator;
import android.animation.AnimatorSet;
import android.animation.ObjectAnimator;
import android.content.Context;
import android.content.SharedPreferences;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.Rect;
import android.graphics.RectF;
import android.util.Log;
import android.view.View;
import android.view.ViewGroup;
import com.android.launcher3.AbstractFloatingView;
import com.android.launcher3.Launcher;
import com.android.launcher3.LauncherState;
import com.android.launcher3.Utilities;
import com.android.launcher3.anim.AnimatedFloat;
import com.android.launcher3.statemanager.StateManager;
import com.android.launcher3.util.ScreenOnTracker;
import quality.ui.doodles.tools.crushinator.Crushinator$StartOn;
/* loaded from: classes.dex */
public final class f extends View implements ViewGroup.OnHierarchyChangeListener, StateManager.StateListener {

    /* renamed from: y  reason: collision with root package name */
    public static final boolean f1544y;

    /* renamed from: z  reason: collision with root package name */
    public static final d f1545z;

    /* renamed from: d  reason: collision with root package name */
    public final SharedPreferences f1546d;

    /* renamed from: e  reason: collision with root package name */
    public Bitmap f1547e;

    /* renamed from: f  reason: collision with root package name */
    public z3.c f1548f;

    /* renamed from: g  reason: collision with root package name */
    public z3.d f1549g;

    /* renamed from: h  reason: collision with root package name */
    public int f1550h;

    /* renamed from: i  reason: collision with root package name */
    public int f1551i;

    /* renamed from: j  reason: collision with root package name */
    public final Rect f1552j;

    /* renamed from: k  reason: collision with root package name */
    public final RectF f1553k;

    /* renamed from: l  reason: collision with root package name */
    public final Path f1554l;

    /* renamed from: m  reason: collision with root package name */
    public AnimatorSet f1555m;

    /* renamed from: n  reason: collision with root package name */
    public final Launcher f1556n;

    /* renamed from: o  reason: collision with root package name */
    public final boolean f1557o;

    /* renamed from: p  reason: collision with root package name */
    public boolean f1558p;

    /* renamed from: q  reason: collision with root package name */
    public boolean f1559q;

    /* renamed from: r  reason: collision with root package name */
    public int f1560r;

    /* renamed from: s  reason: collision with root package name */
    public int f1561s;

    /* renamed from: t  reason: collision with root package name */
    public boolean f1562t;

    /* renamed from: u  reason: collision with root package name */
    public boolean f1563u;

    /* renamed from: v  reason: collision with root package name */
    public final c f1564v;

    /* renamed from: w  reason: collision with root package name */
    public boolean f1565w;

    /* renamed from: x  reason: collision with root package name */
    public final a f1566x;

    static {
        String[] strArr = Utilities.EMPTY_STRING_ARRAY;
        f1544y = Log.isLoggable("DoodleLogging", 2);
        f1545z = new d();
    }

    /* JADX WARN: Type inference failed for: r1v0, types: [P1.c] */
    public f(Context context) {
        super(context);
        this.f1552j = new Rect();
        this.f1553k = new RectF();
        this.f1554l = new Path();
        this.f1559q = false;
        this.f1560r = 0;
        this.f1561s = 0;
        this.f1563u = false;
        this.f1564v = new ScreenOnTracker.ScreenOnListener() { // from class: P1.c
            @Override // com.android.launcher3.util.ScreenOnTracker.ScreenOnListener
            public final void onScreenOnChanged(boolean z4) {
                f fVar = f.this;
                if (!z4) {
                    fVar.getClass();
                    return;
                }
                fVar.f1563u = false;
                fVar.d();
            }
        };
        this.f1565w = false;
        this.f1556n = Launcher.getLauncher(context);
        this.f1557o = Utilities.isRtl(getResources());
        this.f1546d = context.getSharedPreferences("pref_doodle_starts", 0);
        this.f1566x = new a(context);
    }

    public static Animator c(AnimatedFloat animatedFloat, boolean z4) {
        ObjectAnimator ofFloat = ObjectAnimator.ofFloat(animatedFloat, AnimatedFloat.VALUE, z4 ? new float[]{0.0f, 1.0f} : new float[]{1.0f, 0.0f});
        ofFloat.setInterpolator(y0.e.f12949m);
        ofFloat.setDuration(150L);
        return ofFloat;
    }

    public final boolean a() {
        if (f1544y) {
            Log.d("DoodleView", "canPlay#state=" + ((LauncherState) this.f1556n.getStateManager().getState()).ordinal);
        }
        return this.f1556n.isInState(LauncherState.NORMAL) && !this.f1562t && isShown() && hasWindowFocus() && AbstractFloatingView.getTopOpenView(this.f1556n) == null;
    }

    public final void b() {
        if (this.f1558p) {
            a aVar = this.f1566x;
            int i4 = this.f1550h;
            aVar.getClass();
            long currentTimeMillis = System.currentTimeMillis() - aVar.f1537b;
            SharedPreferences.Editor edit = aVar.f1536a.edit();
            String valueOf = String.valueOf(aVar.f1537b);
            edit.putString(valueOf, currentTimeMillis + "," + i4).apply();
        }
        AnimatorSet animatorSet = this.f1555m;
        if (animatorSet != null) {
            animatorSet.end();
        }
        this.f1558p = false;
        this.f1559q = false;
        this.f1551i = 0;
        this.f1550h = 0;
        this.f1562t = false;
        this.f1565w = false;
        invalidate();
    }

    public final void d() {
        boolean a4 = a();
        if (f1544y) {
            Log.d("DoodleView", "tryPlay#canPlay=" + a4 + ", hasStarted=" + this.f1558p);
        }
        if (a4) {
            if (this.f1558p) {
                this.f1555m.resume();
            } else {
                postDelayed(new Runnable() { // from class: P1.b
                    @Override // java.lang.Runnable
                    public final void run() {
                        f fVar = f.this;
                        boolean z4 = false;
                        if (!fVar.f1559q && !fVar.f1558p && fVar.a()) {
                            fVar.f1559q = true;
                            if (fVar.f1560r + 1 <= fVar.f1548f.j().c()) {
                                if (!(fVar.f1548f.j().e() == Crushinator$StartOn.DEFAULT) || !fVar.f1563u) {
                                    fVar.f1563u = true;
                                    if ((fVar.f1560r + fVar.f1561s) % fVar.f1548f.j().d() != 0) {
                                        fVar.f1561s++;
                                    } else {
                                        z4 = true;
                                    }
                                }
                            }
                        }
                        if (z4) {
                            fVar.f1558p = true;
                            fVar.f1560r++;
                            a aVar = fVar.f1566x;
                            aVar.getClass();
                            aVar.f1537b = System.currentTimeMillis();
                            fVar.f1555m.start();
                        }
                    }
                }, this.f1548f.d());
            }
        }
    }

    @Override // android.view.View
    public final void onAttachedToWindow() {
        super.onAttachedToWindow();
        this.f1556n.getDragLayer().setOnHierarchyChangeListener(this);
        this.f1556n.getStateManager().addStateListener(this);
        ((ScreenOnTracker) ScreenOnTracker.INSTANCE.get(this.f1556n)).addListener(this.f1564v);
    }

    @Override // android.view.ViewGroup.OnHierarchyChangeListener
    public final void onChildViewAdded(View view, View view2) {
        if (view2 instanceof AbstractFloatingView) {
            if (f1544y) {
                Log.d("DoodleView", "pause");
            }
            this.f1565w = true;
        }
    }

    @Override // android.view.ViewGroup.OnHierarchyChangeListener
    public final void onChildViewRemoved(View view, View view2) {
        d();
    }

    @Override // android.view.View
    public final void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        this.f1556n.getDragLayer().setOnHierarchyChangeListener(null);
        this.f1556n.getStateManager().removeStateListener(this);
        ((ScreenOnTracker) ScreenOnTracker.INSTANCE.get(this.f1556n)).removeListener(this.f1564v);
    }

    @Override // android.view.View
    public final void onDraw(Canvas canvas) {
        canvas.save();
        canvas.clipPath(this.f1554l);
        z3.e c4 = this.f1549g.c(this.f1551i);
        int c5 = c4.c();
        for (int i4 = 0; i4 < c5; i4++) {
            z3.b b4 = c4.b(i4);
            this.f1552j.set(b4.f(), b4.g(), b4.h() + b4.f(), b4.d() + b4.g());
            float height = getHeight() / this.f1549g.f();
            float h4 = b4.h() * height;
            float b5 = b4.b() * height;
            float c6 = b4.c() * height;
            float f4 = b5 + h4;
            float d4 = (b4.d() * height) + c6;
            canvas.save();
            if (this.f1557o) {
                if (b4.e()) {
                    canvas.translate(getWidth(), 0.0f);
                    canvas.scale(-1.0f, 1.0f);
                } else {
                    f4 = getWidth() - b5;
                    b5 = f4 - h4;
                }
            }
            this.f1553k.set(b5, c6, f4, d4);
            canvas.drawBitmap(this.f1547e, this.f1552j, this.f1553k, (Paint) null);
            canvas.restore();
        }
        canvas.restore();
    }

    @Override // android.view.View
    public final void onMeasure(int i4, int i5) {
        super.onMeasure(i4, i5);
        this.f1554l.reset();
        float measuredHeight = getMeasuredHeight();
        float f4 = measuredHeight / 2.0f;
        this.f1554l.addRoundRect(0.0f, 0.0f, getMeasuredWidth(), measuredHeight, f4, f4, Path.Direction.CW);
    }

    @Override // com.android.launcher3.statemanager.StateManager.StateListener
    public final void onStateTransitionComplete(Object obj) {
        LauncherState launcherState = (LauncherState) obj;
        if (f1544y) {
            Log.d("DoodleView", "onStateTransitionComplete#finalState=" + launcherState.ordinal);
        }
        this.f1562t = false;
        d();
    }

    @Override // com.android.launcher3.statemanager.StateManager.StateListener
    public final void onStateTransitionStart(Object obj) {
        LauncherState launcherState = (LauncherState) obj;
        boolean z4 = f1544y;
        if (z4) {
            Log.d("DoodleView", "onStateTransitionStart#toState=" + launcherState.ordinal);
        }
        this.f1562t = true;
        if (z4) {
            Log.d("DoodleView", "pause");
        }
        this.f1565w = true;
    }

    @Override // android.view.View
    public final void onVisibilityAggregated(boolean z4) {
        super.onVisibilityAggregated(z4);
        if (z4) {
            d();
            return;
        }
        if (f1544y) {
            Log.d("DoodleView", "pause");
        }
        this.f1565w = true;
    }

    @Override // android.view.View
    public final void onWindowFocusChanged(boolean z4) {
        super.onWindowFocusChanged(z4);
        boolean z5 = f1544y;
        if (z5) {
            Log.d("DoodleView", "onWindowFocusChanged#" + z4);
        }
        if (z4) {
            d();
            return;
        }
        if (z5) {
            Log.d("DoodleView", "pause");
        }
        this.f1565w = true;
    }

    @Override // android.view.View
    public final void onWindowVisibilityChanged(int i4) {
        super.onWindowVisibilityChanged(i4);
        boolean z4 = f1544y;
        if (z4) {
            Log.d("DoodleView", "onWindowVisibilityChanged#visibility=" + i4);
        }
        if (i4 != 0) {
            b();
            this.f1546d.edit().putInt("num_times_started", this.f1560r).putInt("num_times_couldve_started", this.f1561s).apply();
            if (z4) {
                Log.d("DoodleView", "edit: numTimesStarted= " + this.f1560r + ", mNumTimesCouldHaveStarted=" + this.f1561s);
            }
        }
    }
}
