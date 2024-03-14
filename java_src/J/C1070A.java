package j;

import android.content.Context;
import android.graphics.Point;
import android.graphics.Rect;
import android.view.Display;
import android.view.Gravity;
import android.view.View;
import android.view.WindowManager;
import android.widget.PopupWindow;
import androidx.core.view.C0187y;
import com.android.systemui.shared.R;
import java.util.WeakHashMap;
/* renamed from: j.A  reason: case insensitive filesystem */
/* loaded from: classes.dex */
public class C1070A {

    /* renamed from: a  reason: collision with root package name */
    public final Context f10455a;

    /* renamed from: b  reason: collision with root package name */
    public final C1097o f10456b;

    /* renamed from: c  reason: collision with root package name */
    public final boolean f10457c;

    /* renamed from: d  reason: collision with root package name */
    public final int f10458d;

    /* renamed from: e  reason: collision with root package name */
    public final int f10459e;

    /* renamed from: f  reason: collision with root package name */
    public View f10460f;

    /* renamed from: g  reason: collision with root package name */
    public int f10461g;

    /* renamed from: h  reason: collision with root package name */
    public boolean f10462h;

    /* renamed from: i  reason: collision with root package name */
    public InterfaceC1071B f10463i;

    /* renamed from: j  reason: collision with root package name */
    public y f10464j;

    /* renamed from: k  reason: collision with root package name */
    public PopupWindow.OnDismissListener f10465k;

    /* renamed from: l  reason: collision with root package name */
    public final z f10466l;

    public C1070A(Context context, C1097o c1097o, View view, boolean z4) {
        this(R.attr.actionOverflowMenuStyle, 0, context, view, c1097o, z4);
    }

    public final y a() {
        y view$OnKeyListenerC1079J;
        if (this.f10464j == null) {
            Context context = this.f10455a;
            Display defaultDisplay = ((WindowManager) context.getSystemService("window")).getDefaultDisplay();
            Point point = new Point();
            defaultDisplay.getRealSize(point);
            if (Math.min(point.x, point.y) >= context.getResources().getDimensionPixelSize(R.dimen.abc_cascading_menus_min_smallest_width)) {
                view$OnKeyListenerC1079J = new View$OnKeyListenerC1091i(this.f10455a, this.f10460f, this.f10458d, this.f10459e, this.f10457c);
            } else {
                view$OnKeyListenerC1079J = new View$OnKeyListenerC1079J(this.f10458d, this.f10459e, this.f10455a, this.f10460f, this.f10456b, this.f10457c);
            }
            view$OnKeyListenerC1079J.k(this.f10456b);
            view$OnKeyListenerC1079J.q(this.f10466l);
            view$OnKeyListenerC1079J.m(this.f10460f);
            view$OnKeyListenerC1079J.i(this.f10463i);
            view$OnKeyListenerC1079J.n(this.f10462h);
            view$OnKeyListenerC1079J.o(this.f10461g);
            this.f10464j = view$OnKeyListenerC1079J;
        }
        return this.f10464j;
    }

    public final boolean b() {
        y yVar = this.f10464j;
        return yVar != null && yVar.b();
    }

    public void c() {
        this.f10464j = null;
        PopupWindow.OnDismissListener onDismissListener = this.f10465k;
        if (onDismissListener != null) {
            onDismissListener.onDismiss();
        }
    }

    public final void d(int i4, int i5, boolean z4, boolean z5) {
        y a4 = a();
        a4.r(z5);
        if (z4) {
            int i6 = this.f10461g;
            View view = this.f10460f;
            WeakHashMap weakHashMap = androidx.core.view.J.f3079a;
            if ((Gravity.getAbsoluteGravity(i6, C0187y.c(view)) & 7) == 5) {
                i4 -= this.f10460f.getWidth();
            }
            a4.p(i4);
            a4.s(i5);
            int i7 = (int) ((this.f10455a.getResources().getDisplayMetrics().density * 48.0f) / 2.0f);
            a4.f10632d = new Rect(i4 - i7, i5 - i7, i4 + i7, i5 + i7);
        }
        a4.show();
    }

    public C1070A(int i4, int i5, Context context, View view, C1097o c1097o, boolean z4) {
        this.f10461g = 8388611;
        this.f10466l = new z(this);
        this.f10455a = context;
        this.f10456b = c1097o;
        this.f10460f = view;
        this.f10457c = z4;
        this.f10458d = i4;
        this.f10459e = i5;
    }
}
