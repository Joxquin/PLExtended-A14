package e;

import android.app.Activity;
import android.app.Dialog;
import android.app.UiModeManager;
import android.content.Context;
import android.content.ContextWrapper;
import android.content.pm.PackageManager;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.location.LocationManager;
import android.os.Build;
import android.os.Bundle;
import android.os.LocaleList;
import android.text.TextUtils;
import android.util.AndroidRuntimeException;
import android.util.AttributeSet;
import android.util.Log;
import android.util.TypedValue;
import android.view.ContextThemeWrapper;
import android.view.KeyCharacterMap;
import android.view.KeyEvent;
import android.view.LayoutInflater;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewConfiguration;
import android.view.ViewGroup;
import android.view.Window;
import android.view.WindowManager;
import android.widget.FrameLayout;
import android.widget.PopupWindow;
import android.widget.TextView;
import android.window.OnBackInvokedCallback;
import android.window.OnBackInvokedDispatcher;
import androidx.appcompat.widget.ActionBarContextView;
import androidx.appcompat.widget.ContentFrameLayout;
import androidx.core.view.C0186x;
import androidx.core.view.c0;
import com.android.systemui.shared.R;
import d.C0792a;
import i.AbstractC0970b;
import i.C0972d;
import j.C1093k;
import j.C1097o;
import j.InterfaceC1095m;
import java.lang.ref.WeakReference;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.WeakHashMap;
import k.C1117A;
import k.H0;
import k.InterfaceC1150m0;
import k.InterfaceC1152n0;
import k.c1;
/* renamed from: e.D  reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class LayoutInflater$Factory2C0803D extends r implements InterfaceC1095m, LayoutInflater.Factory2 {

    /* renamed from: j0  reason: collision with root package name */
    public static final q.m f8786j0 = new q.m();

    /* renamed from: k0  reason: collision with root package name */
    public static final int[] f8787k0 = {16842836};

    /* renamed from: l0  reason: collision with root package name */
    public static final boolean f8788l0 = !"robolectric".equals(Build.FINGERPRINT);

    /* renamed from: m0  reason: collision with root package name */
    public static final boolean f8789m0 = true;

    /* renamed from: B  reason: collision with root package name */
    public boolean f8791B;

    /* renamed from: C  reason: collision with root package name */
    public ViewGroup f8792C;

    /* renamed from: D  reason: collision with root package name */
    public TextView f8793D;

    /* renamed from: E  reason: collision with root package name */
    public View f8794E;

    /* renamed from: F  reason: collision with root package name */
    public boolean f8795F;

    /* renamed from: G  reason: collision with root package name */
    public boolean f8796G;

    /* renamed from: H  reason: collision with root package name */
    public boolean f8797H;

    /* renamed from: I  reason: collision with root package name */
    public boolean f8798I;

    /* renamed from: J  reason: collision with root package name */
    public boolean f8799J;

    /* renamed from: K  reason: collision with root package name */
    public boolean f8800K;

    /* renamed from: L  reason: collision with root package name */
    public boolean f8801L;

    /* renamed from: M  reason: collision with root package name */
    public boolean f8802M;

    /* renamed from: N  reason: collision with root package name */
    public C0802C[] f8803N;

    /* renamed from: O  reason: collision with root package name */
    public C0802C f8804O;

    /* renamed from: P  reason: collision with root package name */
    public boolean f8805P;

    /* renamed from: Q  reason: collision with root package name */
    public boolean f8806Q;

    /* renamed from: R  reason: collision with root package name */
    public boolean f8807R;

    /* renamed from: S  reason: collision with root package name */
    public boolean f8808S;

    /* renamed from: T  reason: collision with root package name */
    public Configuration f8809T;

    /* renamed from: U  reason: collision with root package name */
    public final int f8810U;

    /* renamed from: V  reason: collision with root package name */
    public int f8811V;

    /* renamed from: W  reason: collision with root package name */
    public int f8812W;

    /* renamed from: X  reason: collision with root package name */
    public boolean f8813X;

    /* renamed from: Y  reason: collision with root package name */
    public y f8814Y;

    /* renamed from: Z  reason: collision with root package name */
    public y f8815Z;

    /* renamed from: a0  reason: collision with root package name */
    public boolean f8816a0;

    /* renamed from: b0  reason: collision with root package name */
    public int f8817b0;

    /* renamed from: d0  reason: collision with root package name */
    public boolean f8819d0;

    /* renamed from: e0  reason: collision with root package name */
    public Rect f8820e0;

    /* renamed from: f0  reason: collision with root package name */
    public Rect f8821f0;

    /* renamed from: g0  reason: collision with root package name */
    public C0807H f8822g0;

    /* renamed from: h0  reason: collision with root package name */
    public OnBackInvokedDispatcher f8823h0;

    /* renamed from: i0  reason: collision with root package name */
    public w f8824i0;

    /* renamed from: k  reason: collision with root package name */
    public final Object f8825k;

    /* renamed from: l  reason: collision with root package name */
    public final Context f8826l;

    /* renamed from: m  reason: collision with root package name */
    public Window f8827m;

    /* renamed from: n  reason: collision with root package name */
    public x f8828n;

    /* renamed from: o  reason: collision with root package name */
    public final InterfaceC0824p f8829o;

    /* renamed from: p  reason: collision with root package name */
    public T f8830p;

    /* renamed from: q  reason: collision with root package name */
    public i.j f8831q;

    /* renamed from: r  reason: collision with root package name */
    public CharSequence f8832r;

    /* renamed from: s  reason: collision with root package name */
    public InterfaceC1150m0 f8833s;

    /* renamed from: t  reason: collision with root package name */
    public C0827t f8834t;

    /* renamed from: u  reason: collision with root package name */
    public C0827t f8835u;

    /* renamed from: v  reason: collision with root package name */
    public AbstractC0970b f8836v;

    /* renamed from: w  reason: collision with root package name */
    public ActionBarContextView f8837w;

    /* renamed from: x  reason: collision with root package name */
    public PopupWindow f8838x;

    /* renamed from: y  reason: collision with root package name */
    public RunnableC0826s f8839y;

    /* renamed from: z  reason: collision with root package name */
    public androidx.core.view.O f8840z = null;

    /* renamed from: A  reason: collision with root package name */
    public final boolean f8790A = true;

    /* renamed from: c0  reason: collision with root package name */
    public final RunnableC0826s f8818c0 = new RunnableC0826s(this, 0);

    public LayoutInflater$Factory2C0803D(Context context, Window window, InterfaceC0824p interfaceC0824p, Object obj) {
        androidx.appcompat.app.a aVar = null;
        this.f8810U = -100;
        this.f8826l = context;
        this.f8829o = interfaceC0824p;
        this.f8825k = obj;
        if (obj instanceof Dialog) {
            while (true) {
                if (context != null) {
                    if (!(context instanceof androidx.appcompat.app.a)) {
                        if (!(context instanceof ContextWrapper)) {
                            break;
                        }
                        context = ((ContextWrapper) context).getBaseContext();
                    } else {
                        aVar = (androidx.appcompat.app.a) context;
                        break;
                    }
                } else {
                    break;
                }
            }
            if (aVar != null) {
                this.f8810U = aVar.k().g();
            }
        }
        if (this.f8810U == -100) {
            q.m mVar = f8786j0;
            Integer num = (Integer) mVar.get(this.f8825k.getClass().getName());
            if (num != null) {
                this.f8810U = num.intValue();
                mVar.remove(this.f8825k.getClass().getName());
            }
        }
        if (window != null) {
            z(window);
        }
        C1117A.d();
    }

    public static Configuration D(Context context, int i4, Configuration configuration, boolean z4) {
        int i5 = i4 != 1 ? i4 != 2 ? z4 ? 0 : context.getApplicationContext().getResources().getConfiguration().uiMode & 48 : 32 : 16;
        Configuration configuration2 = new Configuration();
        configuration2.fontScale = 0.0f;
        if (configuration != null) {
            configuration2.setTo(configuration);
        }
        configuration2.uiMode = i5 | (configuration2.uiMode & (-49));
        return configuration2;
    }

    public final void A(int i4, C0802C c0802c, C1097o c1097o) {
        if (c1097o == null) {
            if (c0802c == null && i4 >= 0) {
                C0802C[] c0802cArr = this.f8803N;
                if (i4 < c0802cArr.length) {
                    c0802c = c0802cArr[i4];
                }
            }
            if (c0802c != null) {
                c1097o = c0802c.f8777h;
            }
        }
        if ((c0802c == null || c0802c.f8782m) && !this.f8808S) {
            x xVar = this.f8828n;
            Window.Callback callback = this.f8827m.getCallback();
            xVar.getClass();
            try {
                xVar.f9001g = true;
                callback.onPanelClosed(i4, c1097o);
            } finally {
                xVar.f9001g = false;
            }
        }
    }

    public final void B(C1097o c1097o) {
        if (this.f8802M) {
            return;
        }
        this.f8802M = true;
        this.f8833s.n();
        Window.Callback K3 = K();
        if (K3 != null && !this.f8808S) {
            K3.onPanelClosed(108, c1097o);
        }
        this.f8802M = false;
    }

    public final void C(C0802C c0802c, boolean z4) {
        C0801B c0801b;
        InterfaceC1150m0 interfaceC1150m0;
        if (z4 && c0802c.f8770a == 0 && (interfaceC1150m0 = this.f8833s) != null && interfaceC1150m0.b()) {
            B(c0802c.f8777h);
            return;
        }
        WindowManager windowManager = (WindowManager) this.f8826l.getSystemService("window");
        if (windowManager != null && c0802c.f8782m && (c0801b = c0802c.f8774e) != null) {
            windowManager.removeView(c0801b);
            if (z4) {
                A(c0802c.f8770a, c0802c, null);
            }
        }
        c0802c.f8780k = false;
        c0802c.f8781l = false;
        c0802c.f8782m = false;
        c0802c.f8775f = null;
        c0802c.f8783n = true;
        if (this.f8804O == c0802c) {
            this.f8804O = null;
        }
        if (c0802c.f8770a == 0) {
            S();
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:74:0x00dd  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean E(android.view.KeyEvent r7) {
        /*
            Method dump skipped, instructions count: 257
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: e.LayoutInflater$Factory2C0803D.E(android.view.KeyEvent):boolean");
    }

    public final void F(int i4) {
        C0802C J3 = J(i4);
        if (J3.f8777h != null) {
            Bundle bundle = new Bundle();
            J3.f8777h.t(bundle);
            if (bundle.size() > 0) {
                J3.f8785p = bundle;
            }
            J3.f8777h.w();
            J3.f8777h.clear();
        }
        J3.f8784o = true;
        J3.f8783n = true;
        if ((i4 == 108 || i4 == 0) && this.f8833s != null) {
            C0802C J4 = J(0);
            J4.f8780k = false;
            Q(J4, null);
        }
    }

    public final void G() {
        ViewGroup viewGroup;
        if (this.f8791B) {
            return;
        }
        Context context = this.f8826l;
        int[] iArr = C0792a.f8740j;
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(iArr);
        if (!obtainStyledAttributes.hasValue(117)) {
            obtainStyledAttributes.recycle();
            throw new IllegalStateException("You need to use a Theme.AppCompat theme (or descendant) with this activity.");
        }
        if (obtainStyledAttributes.getBoolean(R.styleable.AppCompatTheme_windowNoTitle, false)) {
            s(1);
        } else if (obtainStyledAttributes.getBoolean(117, false)) {
            s(108);
        }
        if (obtainStyledAttributes.getBoolean(118, false)) {
            s(109);
        }
        if (obtainStyledAttributes.getBoolean(119, false)) {
            s(10);
        }
        this.f8800K = obtainStyledAttributes.getBoolean(0, false);
        obtainStyledAttributes.recycle();
        H();
        this.f8827m.getDecorView();
        LayoutInflater from = LayoutInflater.from(this.f8826l);
        if (this.f8801L) {
            viewGroup = this.f8799J ? (ViewGroup) from.inflate(R.layout.abc_screen_simple_overlay_action_mode, (ViewGroup) null) : (ViewGroup) from.inflate(R.layout.abc_screen_simple, (ViewGroup) null);
        } else if (this.f8800K) {
            viewGroup = (ViewGroup) from.inflate(R.layout.abc_dialog_title_material, (ViewGroup) null);
            this.f8798I = false;
            this.f8797H = false;
        } else if (this.f8797H) {
            TypedValue typedValue = new TypedValue();
            this.f8826l.getTheme().resolveAttribute(R.attr.actionBarTheme, typedValue, true);
            viewGroup = (ViewGroup) LayoutInflater.from(typedValue.resourceId != 0 ? new C0972d(typedValue.resourceId, this.f8826l) : this.f8826l).inflate(R.layout.abc_screen_toolbar, (ViewGroup) null);
            InterfaceC1150m0 interfaceC1150m0 = (InterfaceC1150m0) viewGroup.findViewById(R.id.decor_content_parent);
            this.f8833s = interfaceC1150m0;
            interfaceC1150m0.c(K());
            if (this.f8798I) {
                this.f8833s.m(109);
            }
            if (this.f8795F) {
                this.f8833s.m(2);
            }
            if (this.f8796G) {
                this.f8833s.m(5);
            }
        } else {
            viewGroup = null;
        }
        if (viewGroup == null) {
            throw new IllegalArgumentException("AppCompat does not support the current theme features: { windowActionBar: " + this.f8797H + ", windowActionBarOverlay: " + this.f8798I + ", android:windowIsFloating: " + this.f8800K + ", windowActionModeOverlay: " + this.f8799J + ", windowNoTitle: " + this.f8801L + " }");
        }
        C0827t c0827t = new C0827t(this, 0);
        WeakHashMap weakHashMap = androidx.core.view.J.f3079a;
        androidx.core.view.D.l(viewGroup, c0827t);
        if (this.f8833s == null) {
            this.f8793D = (TextView) viewGroup.findViewById(R.id.title);
        }
        Method method = c1.f10879a;
        try {
            Method method2 = viewGroup.getClass().getMethod("makeOptionalFitsSystemWindows", new Class[0]);
            if (!method2.isAccessible()) {
                method2.setAccessible(true);
            }
            method2.invoke(viewGroup, new Object[0]);
        } catch (IllegalAccessException e4) {
            Log.d("ViewUtils", "Could not invoke makeOptionalFitsSystemWindows", e4);
        } catch (NoSuchMethodException unused) {
            Log.d("ViewUtils", "Could not find method makeOptionalFitsSystemWindows. Oh well...");
        } catch (InvocationTargetException e5) {
            Log.d("ViewUtils", "Could not invoke makeOptionalFitsSystemWindows", e5);
        }
        ContentFrameLayout contentFrameLayout = (ContentFrameLayout) viewGroup.findViewById(R.id.action_bar_activity_content);
        ViewGroup viewGroup2 = (ViewGroup) this.f8827m.findViewById(16908290);
        if (viewGroup2 != null) {
            while (viewGroup2.getChildCount() > 0) {
                View childAt = viewGroup2.getChildAt(0);
                viewGroup2.removeViewAt(0);
                contentFrameLayout.addView(childAt);
            }
            viewGroup2.setId(-1);
            contentFrameLayout.setId(16908290);
            if (viewGroup2 instanceof FrameLayout) {
                ((FrameLayout) viewGroup2).setForeground(null);
            }
        }
        this.f8827m.setContentView(viewGroup);
        contentFrameLayout.f2593k = new C0827t(this, 2);
        this.f8792C = viewGroup;
        Object obj = this.f8825k;
        CharSequence title = obj instanceof Activity ? ((Activity) obj).getTitle() : this.f8832r;
        if (!TextUtils.isEmpty(title)) {
            InterfaceC1150m0 interfaceC1150m02 = this.f8833s;
            if (interfaceC1150m02 != null) {
                interfaceC1150m02.a(title);
            } else {
                T t4 = this.f8830p;
                if (t4 != null) {
                    t4.f8884e.a(title);
                } else {
                    TextView textView = this.f8793D;
                    if (textView != null) {
                        textView.setText(title);
                    }
                }
            }
        }
        ContentFrameLayout contentFrameLayout2 = (ContentFrameLayout) this.f8792C.findViewById(16908290);
        View decorView = this.f8827m.getDecorView();
        contentFrameLayout2.f2592j.set(decorView.getPaddingLeft(), decorView.getPaddingTop(), decorView.getPaddingRight(), decorView.getPaddingBottom());
        WeakHashMap weakHashMap2 = androidx.core.view.J.f3079a;
        if (androidx.core.view.A.c(contentFrameLayout2)) {
            contentFrameLayout2.requestLayout();
        }
        TypedArray obtainStyledAttributes2 = this.f8826l.obtainStyledAttributes(iArr);
        if (contentFrameLayout2.f2586d == null) {
            contentFrameLayout2.f2586d = new TypedValue();
        }
        obtainStyledAttributes2.getValue(R.styleable.AppCompatTheme_windowMinWidthMajor, contentFrameLayout2.f2586d);
        if (contentFrameLayout2.f2587e == null) {
            contentFrameLayout2.f2587e = new TypedValue();
        }
        obtainStyledAttributes2.getValue(R.styleable.AppCompatTheme_windowMinWidthMinor, contentFrameLayout2.f2587e);
        if (obtainStyledAttributes2.hasValue(122)) {
            if (contentFrameLayout2.f2588f == null) {
                contentFrameLayout2.f2588f = new TypedValue();
            }
            obtainStyledAttributes2.getValue(122, contentFrameLayout2.f2588f);
        }
        if (obtainStyledAttributes2.hasValue(123)) {
            if (contentFrameLayout2.f2589g == null) {
                contentFrameLayout2.f2589g = new TypedValue();
            }
            obtainStyledAttributes2.getValue(123, contentFrameLayout2.f2589g);
        }
        if (obtainStyledAttributes2.hasValue(120)) {
            if (contentFrameLayout2.f2590h == null) {
                contentFrameLayout2.f2590h = new TypedValue();
            }
            obtainStyledAttributes2.getValue(120, contentFrameLayout2.f2590h);
        }
        if (obtainStyledAttributes2.hasValue(121)) {
            if (contentFrameLayout2.f2591i == null) {
                contentFrameLayout2.f2591i = new TypedValue();
            }
            obtainStyledAttributes2.getValue(121, contentFrameLayout2.f2591i);
        }
        obtainStyledAttributes2.recycle();
        contentFrameLayout2.requestLayout();
        this.f8791B = true;
        C0802C J3 = J(0);
        if (this.f8808S || J3.f8777h != null) {
            return;
        }
        this.f8817b0 |= 4096;
        if (this.f8816a0) {
            return;
        }
        C0186x.j(this.f8827m.getDecorView(), this.f8818c0);
        this.f8816a0 = true;
    }

    public final void H() {
        if (this.f8827m == null) {
            Object obj = this.f8825k;
            if (obj instanceof Activity) {
                z(((Activity) obj).getWindow());
            }
        }
        if (this.f8827m == null) {
            throw new IllegalStateException("We have not been given a Window");
        }
    }

    public final AbstractC0800A I(Context context) {
        if (this.f8814Y == null) {
            if (O.f8866d == null) {
                Context applicationContext = context.getApplicationContext();
                O.f8866d = new O(applicationContext, (LocationManager) applicationContext.getSystemService("location"));
            }
            this.f8814Y = new y(this, O.f8866d);
        }
        return this.f8814Y;
    }

    public final C0802C J(int i4) {
        C0802C[] c0802cArr = this.f8803N;
        if (c0802cArr == null || c0802cArr.length <= i4) {
            C0802C[] c0802cArr2 = new C0802C[i4 + 1];
            if (c0802cArr != null) {
                System.arraycopy(c0802cArr, 0, c0802cArr2, 0, c0802cArr.length);
            }
            this.f8803N = c0802cArr2;
            c0802cArr = c0802cArr2;
        }
        C0802C c0802c = c0802cArr[i4];
        if (c0802c == null) {
            C0802C c0802c2 = new C0802C(i4);
            c0802cArr[i4] = c0802c2;
            return c0802c2;
        }
        return c0802c;
    }

    public final Window.Callback K() {
        return this.f8827m.getCallback();
    }

    public final void L() {
        G();
        if (this.f8797H && this.f8830p == null) {
            Object obj = this.f8825k;
            if (obj instanceof Activity) {
                this.f8830p = new T((Activity) this.f8825k, this.f8798I);
            } else if (obj instanceof Dialog) {
                this.f8830p = new T((Dialog) this.f8825k);
            }
            T t4 = this.f8830p;
            if (t4 != null) {
                t4.e(this.f8819d0);
            }
        }
    }

    public final int M(int i4, Context context) {
        if (i4 != -100) {
            if (i4 != -1) {
                if (i4 == 0) {
                    if (((UiModeManager) context.getApplicationContext().getSystemService("uimode")).getNightMode() == 0) {
                        return -1;
                    }
                    return I(context).b();
                } else if (i4 != 1 && i4 != 2) {
                    if (i4 == 3) {
                        if (this.f8815Z == null) {
                            this.f8815Z = new y(this, context);
                        }
                        return this.f8815Z.b();
                    }
                    throw new IllegalStateException("Unknown value set for night mode. Please use one of the MODE_NIGHT values from AppCompatDelegate.");
                }
            }
            return i4;
        }
        return -1;
    }

    public final boolean N() {
        boolean z4;
        boolean z5 = this.f8805P;
        this.f8805P = false;
        C0802C J3 = J(0);
        if (J3.f8782m) {
            if (!z5) {
                C(J3, true);
            }
            return true;
        }
        AbstractC0970b abstractC0970b = this.f8836v;
        if (abstractC0970b != null) {
            abstractC0970b.c();
            return true;
        }
        L();
        T t4 = this.f8830p;
        if (t4 != null) {
            InterfaceC1152n0 interfaceC1152n0 = t4.f8884e;
            if (interfaceC1152n0 == null || !interfaceC1152n0.m()) {
                z4 = false;
            } else {
                t4.f8884e.collapseActionView();
                z4 = true;
            }
            if (z4) {
                return true;
            }
        }
        return false;
    }

    /* JADX WARN: Code restructure failed: missing block: B:78:0x0156, code lost:
        if (r2 != null) goto L59;
     */
    /* JADX WARN: Code restructure failed: missing block: B:92:0x017a, code lost:
        if (r2.f10556i.getCount() > 0) goto L70;
     */
    /* JADX WARN: Removed duplicated region for block: B:109:0x01de  */
    /* JADX WARN: Removed duplicated region for block: B:113:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:82:0x015d  */
    /* JADX WARN: Removed duplicated region for block: B:97:0x0182  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void O(e.C0802C r18, android.view.KeyEvent r19) {
        /*
            Method dump skipped, instructions count: 485
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: e.LayoutInflater$Factory2C0803D.O(e.C, android.view.KeyEvent):void");
    }

    public final boolean P(C0802C c0802c, int i4, KeyEvent keyEvent) {
        C1097o c1097o;
        if (keyEvent.isSystem()) {
            return false;
        }
        if ((c0802c.f8780k || Q(c0802c, keyEvent)) && (c1097o = c0802c.f8777h) != null) {
            return c1097o.performShortcut(i4, keyEvent, 1);
        }
        return false;
    }

    public final boolean Q(C0802C c0802c, KeyEvent keyEvent) {
        InterfaceC1150m0 interfaceC1150m0;
        InterfaceC1150m0 interfaceC1150m02;
        Resources.Theme theme;
        InterfaceC1150m0 interfaceC1150m03;
        InterfaceC1150m0 interfaceC1150m04;
        if (this.f8808S) {
            return false;
        }
        if (c0802c.f8780k) {
            return true;
        }
        C0802C c0802c2 = this.f8804O;
        if (c0802c2 != null && c0802c2 != c0802c) {
            C(c0802c2, false);
        }
        Window.Callback K3 = K();
        int i4 = c0802c.f8770a;
        if (K3 != null) {
            c0802c.f8776g = K3.onCreatePanelView(i4);
        }
        boolean z4 = i4 == 0 || i4 == 108;
        if (z4 && (interfaceC1150m04 = this.f8833s) != null) {
            interfaceC1150m04.d();
        }
        if (c0802c.f8776g == null) {
            C1097o c1097o = c0802c.f8777h;
            if (c1097o == null || c0802c.f8784o) {
                if (c1097o == null) {
                    Context context = this.f8826l;
                    if ((i4 == 0 || i4 == 108) && this.f8833s != null) {
                        TypedValue typedValue = new TypedValue();
                        Resources.Theme theme2 = context.getTheme();
                        theme2.resolveAttribute(R.attr.actionBarTheme, typedValue, true);
                        if (typedValue.resourceId != 0) {
                            theme = context.getResources().newTheme();
                            theme.setTo(theme2);
                            theme.applyStyle(typedValue.resourceId, true);
                            theme.resolveAttribute(R.attr.actionBarWidgetTheme, typedValue, true);
                        } else {
                            theme2.resolveAttribute(R.attr.actionBarWidgetTheme, typedValue, true);
                            theme = null;
                        }
                        if (typedValue.resourceId != 0) {
                            if (theme == null) {
                                theme = context.getResources().newTheme();
                                theme.setTo(theme2);
                            }
                            theme.applyStyle(typedValue.resourceId, true);
                        }
                        if (theme != null) {
                            C0972d c0972d = new C0972d(0, context);
                            c0972d.getTheme().setTo(theme);
                            context = c0972d;
                        }
                    }
                    C1097o c1097o2 = new C1097o(context);
                    c1097o2.f10568e = this;
                    C1097o c1097o3 = c0802c.f8777h;
                    if (c1097o2 != c1097o3) {
                        if (c1097o3 != null) {
                            c1097o3.r(c0802c.f8778i);
                        }
                        c0802c.f8777h = c1097o2;
                        C1093k c1093k = c0802c.f8778i;
                        if (c1093k != null) {
                            c1097o2.b(c1093k, c1097o2.f10564a);
                        }
                    }
                    if (c0802c.f8777h == null) {
                        return false;
                    }
                }
                if (z4 && (interfaceC1150m02 = this.f8833s) != null) {
                    if (this.f8834t == null) {
                        this.f8834t = new C0827t(this, 3);
                    }
                    interfaceC1150m02.g(c0802c.f8777h, this.f8834t);
                }
                c0802c.f8777h.w();
                if (!K3.onCreatePanelMenu(i4, c0802c.f8777h)) {
                    C1097o c1097o4 = c0802c.f8777h;
                    if (c1097o4 != null) {
                        if (c1097o4 != null) {
                            c1097o4.r(c0802c.f8778i);
                        }
                        c0802c.f8777h = null;
                    }
                    if (z4 && (interfaceC1150m0 = this.f8833s) != null) {
                        interfaceC1150m0.g(null, this.f8834t);
                    }
                    return false;
                }
                c0802c.f8784o = false;
            }
            c0802c.f8777h.w();
            Bundle bundle = c0802c.f8785p;
            if (bundle != null) {
                c0802c.f8777h.s(bundle);
                c0802c.f8785p = null;
            }
            if (!K3.onPreparePanel(0, c0802c.f8776g, c0802c.f8777h)) {
                if (z4 && (interfaceC1150m03 = this.f8833s) != null) {
                    interfaceC1150m03.g(null, this.f8834t);
                }
                c0802c.f8777h.v();
                return false;
            }
            c0802c.f8777h.setQwertyMode(KeyCharacterMap.load(keyEvent != null ? keyEvent.getDeviceId() : -1).getKeyboardType() != 1);
            c0802c.f8777h.v();
        }
        c0802c.f8780k = true;
        c0802c.f8781l = false;
        this.f8804O = c0802c;
        return true;
    }

    public final void R() {
        if (this.f8791B) {
            throw new AndroidRuntimeException("Window feature must be requested before adding content");
        }
    }

    /* JADX WARN: Type inference failed for: r1v3, types: [android.window.OnBackInvokedCallback, e.w] */
    public final void S() {
        w wVar;
        boolean z4 = false;
        if (this.f8823h0 != null && (J(0).f8782m || this.f8836v != null)) {
            z4 = true;
        }
        if (z4 && this.f8824i0 == null) {
            OnBackInvokedDispatcher onBackInvokedDispatcher = this.f8823h0;
            ?? r12 = new OnBackInvokedCallback() { // from class: e.w
                public final void onBackInvoked() {
                    LayoutInflater$Factory2C0803D.this.N();
                }
            };
            onBackInvokedDispatcher.registerOnBackInvokedCallback(1000000, (OnBackInvokedCallback) r12);
            this.f8824i0 = r12;
        } else if (z4 || (wVar = this.f8824i0) == null) {
        } else {
            this.f8823h0.unregisterOnBackInvokedCallback(wVar);
            this.f8824i0 = null;
        }
    }

    public final int T(c0 c0Var, Rect rect) {
        boolean z4;
        boolean z5;
        int color;
        int d4 = c0Var != null ? c0Var.d() : rect != null ? rect.top : 0;
        ActionBarContextView actionBarContextView = this.f8837w;
        if (actionBarContextView == null || !(actionBarContextView.getLayoutParams() instanceof ViewGroup.MarginLayoutParams)) {
            z4 = false;
        } else {
            ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) this.f8837w.getLayoutParams();
            if (this.f8837w.isShown()) {
                if (this.f8820e0 == null) {
                    this.f8820e0 = new Rect();
                    this.f8821f0 = new Rect();
                }
                Rect rect2 = this.f8820e0;
                Rect rect3 = this.f8821f0;
                if (c0Var == null) {
                    rect2.set(rect);
                } else {
                    rect2.set(c0Var.b(), c0Var.d(), c0Var.c(), c0Var.a());
                }
                ViewGroup viewGroup = this.f8792C;
                Method method = c1.f10879a;
                if (method != null) {
                    try {
                        method.invoke(viewGroup, rect2, rect3);
                    } catch (Exception e4) {
                        Log.d("ViewUtils", "Could not invoke computeFitSystemWindows", e4);
                    }
                }
                int i4 = rect2.top;
                int i5 = rect2.left;
                int i6 = rect2.right;
                ViewGroup viewGroup2 = this.f8792C;
                WeakHashMap weakHashMap = androidx.core.view.J.f3079a;
                c0 a4 = androidx.core.view.E.a(viewGroup2);
                int b4 = a4 == null ? 0 : a4.b();
                int c4 = a4 == null ? 0 : a4.c();
                if (marginLayoutParams.topMargin == i4 && marginLayoutParams.leftMargin == i5 && marginLayoutParams.rightMargin == i6) {
                    z5 = false;
                } else {
                    marginLayoutParams.topMargin = i4;
                    marginLayoutParams.leftMargin = i5;
                    marginLayoutParams.rightMargin = i6;
                    z5 = true;
                }
                if (i4 <= 0 || this.f8794E != null) {
                    View view = this.f8794E;
                    if (view != null) {
                        ViewGroup.MarginLayoutParams marginLayoutParams2 = (ViewGroup.MarginLayoutParams) view.getLayoutParams();
                        int i7 = marginLayoutParams2.height;
                        int i8 = marginLayoutParams.topMargin;
                        if (i7 != i8 || marginLayoutParams2.leftMargin != b4 || marginLayoutParams2.rightMargin != c4) {
                            marginLayoutParams2.height = i8;
                            marginLayoutParams2.leftMargin = b4;
                            marginLayoutParams2.rightMargin = c4;
                            this.f8794E.setLayoutParams(marginLayoutParams2);
                        }
                    }
                } else {
                    View view2 = new View(this.f8826l);
                    this.f8794E = view2;
                    view2.setVisibility(8);
                    FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(-1, marginLayoutParams.topMargin, 51);
                    layoutParams.leftMargin = b4;
                    layoutParams.rightMargin = c4;
                    this.f8792C.addView(this.f8794E, -1, layoutParams);
                }
                View view3 = this.f8794E;
                z4 = view3 != null;
                if (z4 && view3.getVisibility() != 0) {
                    View view4 = this.f8794E;
                    if ((C0186x.e(view4) & 8192) != 0) {
                        Context context = this.f8826l;
                        Object obj = B.c.f105a;
                        color = context.getColor(R.color.abc_decor_view_status_guard_light);
                    } else {
                        Context context2 = this.f8826l;
                        Object obj2 = B.c.f105a;
                        color = context2.getColor(R.color.abc_decor_view_status_guard);
                    }
                    view4.setBackgroundColor(color);
                }
                if (!this.f8799J && z4) {
                    d4 = 0;
                }
                r5 = z5;
            } else if (marginLayoutParams.topMargin != 0) {
                marginLayoutParams.topMargin = 0;
                z4 = false;
            } else {
                z4 = false;
                r5 = false;
            }
            if (r5) {
                this.f8837w.setLayoutParams(marginLayoutParams);
            }
        }
        View view5 = this.f8794E;
        if (view5 != null) {
            view5.setVisibility(z4 ? 0 : 8);
        }
        return d4;
    }

    @Override // j.InterfaceC1095m
    public final void a(C1097o c1097o) {
        InterfaceC1150m0 interfaceC1150m0 = this.f8833s;
        if (interfaceC1150m0 == null || !interfaceC1150m0.i() || (ViewConfiguration.get(this.f8826l).hasPermanentMenuKey() && !this.f8833s.e())) {
            C0802C J3 = J(0);
            J3.f8783n = true;
            C(J3, false);
            O(J3, null);
            return;
        }
        Window.Callback K3 = K();
        if (this.f8833s.b()) {
            this.f8833s.f();
            if (this.f8808S) {
                return;
            }
            K3.onPanelClosed(108, J(0).f8777h);
        } else if (K3 == null || this.f8808S) {
        } else {
            if (this.f8816a0 && (1 & this.f8817b0) != 0) {
                this.f8827m.getDecorView().removeCallbacks(this.f8818c0);
                this.f8818c0.run();
            }
            C0802C J4 = J(0);
            C1097o c1097o2 = J4.f8777h;
            if (c1097o2 == null || J4.f8784o || !K3.onPreparePanel(0, J4.f8776g, c1097o2)) {
                return;
            }
            K3.onMenuOpened(108, J4.f8777h);
            this.f8833s.h();
        }
    }

    @Override // j.InterfaceC1095m
    public final boolean b(C1097o c1097o, MenuItem menuItem) {
        int i4;
        int i5;
        C0802C c0802c;
        Window.Callback K3 = K();
        if (K3 != null && !this.f8808S) {
            C1097o k4 = c1097o.k();
            C0802C[] c0802cArr = this.f8803N;
            if (c0802cArr != null) {
                i4 = c0802cArr.length;
                i5 = 0;
            } else {
                i4 = 0;
                i5 = 0;
            }
            while (true) {
                if (i5 < i4) {
                    c0802c = c0802cArr[i5];
                    if (c0802c != null && c0802c.f8777h == k4) {
                        break;
                    }
                    i5++;
                } else {
                    c0802c = null;
                    break;
                }
            }
            if (c0802c != null) {
                return K3.onMenuItemSelected(c0802c.f8770a, menuItem);
            }
        }
        return false;
    }

    @Override // e.r
    public final void c(View view, ViewGroup.LayoutParams layoutParams) {
        G();
        ((ViewGroup) this.f8792C.findViewById(16908290)).addView(view, layoutParams);
        this.f8828n.a(this.f8827m.getCallback());
    }

    @Override // e.r
    public final Context d(final Context context) {
        this.f8806Q = true;
        int i4 = this.f8810U;
        if (i4 == -100) {
            i4 = r.f8983e;
        }
        int M3 = M(i4, context);
        if (r.k(context) && r.k(context) && !r.f8985g) {
            r.f8982d.execute(new Runnable() { // from class: e.q
                /* JADX WARN: Code restructure failed: missing block: B:33:0x0094, code lost:
                    r3 = r7.getAttributeValue(null, "application_locales");
                 */
                /* JADX WARN: Code restructure failed: missing block: B:34:0x009a, code lost:
                    if (r6 != null) goto L36;
                 */
                /* JADX WARN: Code restructure failed: missing block: B:39:0x00a6, code lost:
                    if (r6 == null) goto L30;
                 */
                /* JADX WARN: Code restructure failed: missing block: B:40:0x00a8, code lost:
                    r6.close();
                 */
                /* JADX WARN: Removed duplicated region for block: B:50:0x00c2  */
                @Override // java.lang.Runnable
                /*
                    Code decompiled incorrectly, please refer to instructions dump.
                    To view partially-correct add '--show-bad-code' argument
                */
                public final void run() {
                    /*
                        r12 = this;
                        android.content.Context r12 = r1
                        android.content.ComponentName r0 = new android.content.ComponentName
                        java.lang.String r1 = "androidx.appcompat.app.AppLocalesMetadataHolderService"
                        r0.<init>(r12, r1)
                        android.content.pm.PackageManager r1 = r12.getPackageManager()
                        int r1 = r1.getComponentEnabledSetting(r0)
                        r2 = 1
                        if (r1 == r2) goto Ld2
                        q.h r1 = e.r.f8986h
                        r1.getClass()
                        q.g r3 = new q.g
                        r3.<init>(r1)
                    L1e:
                        boolean r1 = r3.hasNext()
                        r4 = 0
                        java.lang.String r5 = "locale"
                        if (r1 == 0) goto L40
                        java.lang.Object r1 = r3.next()
                        java.lang.ref.WeakReference r1 = (java.lang.ref.WeakReference) r1
                        java.lang.Object r1 = r1.get()
                        e.r r1 = (e.r) r1
                        if (r1 == 0) goto L1e
                        android.content.Context r1 = r1.f()
                        if (r1 == 0) goto L1e
                        java.lang.Object r1 = r1.getSystemService(r5)
                        goto L41
                    L40:
                        r1 = r4
                    L41:
                        if (r1 == 0) goto L54
                        android.app.LocaleManager r1 = (android.app.LocaleManager) r1
                        android.os.LocaleList r1 = r1.getApplicationLocales()
                        I.f r3 = new I.f
                        I.h r6 = new I.h
                        r6.<init>(r1)
                        r3.<init>(r6)
                        goto L56
                    L54:
                        I.f r3 = I.f.f555b
                    L56:
                        I.g r1 = r3.f556a
                        boolean r1 = r1.isEmpty()
                        if (r1 == 0) goto Lcb
                        java.lang.String r1 = "androidx.appcompat.app.AppCompatDelegate.application_locales_record_file"
                        java.lang.String r3 = ""
                        java.io.FileInputStream r6 = r12.openFileInput(r1)     // Catch: java.io.FileNotFoundException -> Lbc
                        org.xmlpull.v1.XmlPullParser r7 = android.util.Xml.newPullParser()     // Catch: java.lang.Throwable -> L9d java.lang.Throwable -> L9f
                        java.lang.String r8 = "UTF-8"
                        r7.setInput(r6, r8)     // Catch: java.lang.Throwable -> L9d java.lang.Throwable -> L9f
                        int r8 = r7.getDepth()     // Catch: java.lang.Throwable -> L9d java.lang.Throwable -> L9f
                    L73:
                        int r9 = r7.next()     // Catch: java.lang.Throwable -> L9d java.lang.Throwable -> L9f
                        if (r9 == r2) goto L9a
                        r10 = 3
                        if (r9 != r10) goto L82
                        int r11 = r7.getDepth()     // Catch: java.lang.Throwable -> L9d java.lang.Throwable -> L9f
                        if (r11 <= r8) goto L9a
                    L82:
                        if (r9 == r10) goto L73
                        r10 = 4
                        if (r9 != r10) goto L88
                        goto L73
                    L88:
                        java.lang.String r9 = r7.getName()     // Catch: java.lang.Throwable -> L9d java.lang.Throwable -> L9f
                        java.lang.String r10 = "locales"
                        boolean r9 = r9.equals(r10)     // Catch: java.lang.Throwable -> L9d java.lang.Throwable -> L9f
                        if (r9 == 0) goto L73
                        java.lang.String r8 = "application_locales"
                        java.lang.String r3 = r7.getAttributeValue(r4, r8)     // Catch: java.lang.Throwable -> L9d java.lang.Throwable -> L9f
                    L9a:
                        if (r6 == 0) goto Lab
                        goto La8
                    L9d:
                        r12 = move-exception
                        goto Lb6
                    L9f:
                        java.lang.String r4 = "AppLocalesStorageHelper"
                        java.lang.String r7 = "Reading app Locales : Unable to parse through file :androidx.appcompat.app.AppCompatDelegate.application_locales_record_file"
                        android.util.Log.w(r4, r7)     // Catch: java.lang.Throwable -> L9d
                        if (r6 == 0) goto Lab
                    La8:
                        r6.close()     // Catch: java.io.IOException -> Lab
                    Lab:
                        boolean r4 = r3.isEmpty()
                        if (r4 != 0) goto Lb2
                        goto Lbc
                    Lb2:
                        r12.deleteFile(r1)
                        goto Lbc
                    Lb6:
                        if (r6 == 0) goto Lbb
                        r6.close()     // Catch: java.io.IOException -> Lbb
                    Lbb:
                        throw r12
                    Lbc:
                        java.lang.Object r1 = r12.getSystemService(r5)
                        if (r1 == 0) goto Lcb
                        android.os.LocaleList r3 = android.os.LocaleList.forLanguageTags(r3)
                        android.app.LocaleManager r1 = (android.app.LocaleManager) r1
                        r1.setApplicationLocales(r3)
                    Lcb:
                        android.content.pm.PackageManager r12 = r12.getPackageManager()
                        r12.setComponentEnabledSetting(r0, r2, r2)
                    Ld2:
                        e.r.f8985g = r2
                        return
                    */
                    throw new UnsupportedOperationException("Method not decompiled: e.RunnableC0825q.run():void");
                }
            });
        }
        boolean z4 = false;
        Configuration configuration = null;
        if (f8789m0 && (context instanceof ContextThemeWrapper)) {
            try {
                ((ContextThemeWrapper) context).applyOverrideConfiguration(D(context, M3, null, false));
                return context;
            } catch (IllegalStateException unused) {
            }
        }
        if (context instanceof C0972d) {
            try {
                ((C0972d) context).a(D(context, M3, null, false));
                return context;
            } catch (IllegalStateException unused2) {
            }
        }
        if (f8788l0) {
            Configuration configuration2 = new Configuration();
            configuration2.uiMode = -1;
            configuration2.fontScale = 0.0f;
            Configuration configuration3 = context.createConfigurationContext(configuration2).getResources().getConfiguration();
            Configuration configuration4 = context.getResources().getConfiguration();
            configuration3.uiMode = configuration4.uiMode;
            if (!configuration3.equals(configuration4)) {
                configuration = new Configuration();
                configuration.fontScale = 0.0f;
                if (configuration3.diff(configuration4) != 0) {
                    float f4 = configuration3.fontScale;
                    float f5 = configuration4.fontScale;
                    if (f4 != f5) {
                        configuration.fontScale = f5;
                    }
                    int i5 = configuration3.mcc;
                    int i6 = configuration4.mcc;
                    if (i5 != i6) {
                        configuration.mcc = i6;
                    }
                    int i7 = configuration3.mnc;
                    int i8 = configuration4.mnc;
                    if (i7 != i8) {
                        configuration.mnc = i8;
                    }
                    LocaleList locales = configuration3.getLocales();
                    LocaleList locales2 = configuration4.getLocales();
                    if (!locales.equals(locales2)) {
                        configuration.setLocales(locales2);
                        configuration.locale = configuration4.locale;
                    }
                    int i9 = configuration3.touchscreen;
                    int i10 = configuration4.touchscreen;
                    if (i9 != i10) {
                        configuration.touchscreen = i10;
                    }
                    int i11 = configuration3.keyboard;
                    int i12 = configuration4.keyboard;
                    if (i11 != i12) {
                        configuration.keyboard = i12;
                    }
                    int i13 = configuration3.keyboardHidden;
                    int i14 = configuration4.keyboardHidden;
                    if (i13 != i14) {
                        configuration.keyboardHidden = i14;
                    }
                    int i15 = configuration3.navigation;
                    int i16 = configuration4.navigation;
                    if (i15 != i16) {
                        configuration.navigation = i16;
                    }
                    int i17 = configuration3.navigationHidden;
                    int i18 = configuration4.navigationHidden;
                    if (i17 != i18) {
                        configuration.navigationHidden = i18;
                    }
                    int i19 = configuration3.orientation;
                    int i20 = configuration4.orientation;
                    if (i19 != i20) {
                        configuration.orientation = i20;
                    }
                    int i21 = configuration3.screenLayout & 15;
                    int i22 = configuration4.screenLayout & 15;
                    if (i21 != i22) {
                        configuration.screenLayout |= i22;
                    }
                    int i23 = configuration3.screenLayout & 192;
                    int i24 = configuration4.screenLayout & 192;
                    if (i23 != i24) {
                        configuration.screenLayout |= i24;
                    }
                    int i25 = configuration3.screenLayout & 48;
                    int i26 = configuration4.screenLayout & 48;
                    if (i25 != i26) {
                        configuration.screenLayout |= i26;
                    }
                    int i27 = configuration3.screenLayout & 768;
                    int i28 = configuration4.screenLayout & 768;
                    if (i27 != i28) {
                        configuration.screenLayout |= i28;
                    }
                    int i29 = configuration3.colorMode & 3;
                    int i30 = configuration4.colorMode & 3;
                    if (i29 != i30) {
                        configuration.colorMode |= i30;
                    }
                    int i31 = configuration3.colorMode & 12;
                    int i32 = configuration4.colorMode & 12;
                    if (i31 != i32) {
                        configuration.colorMode |= i32;
                    }
                    int i33 = configuration3.uiMode & 15;
                    int i34 = configuration4.uiMode & 15;
                    if (i33 != i34) {
                        configuration.uiMode |= i34;
                    }
                    int i35 = configuration3.uiMode & 48;
                    int i36 = configuration4.uiMode & 48;
                    if (i35 != i36) {
                        configuration.uiMode |= i36;
                    }
                    int i37 = configuration3.screenWidthDp;
                    int i38 = configuration4.screenWidthDp;
                    if (i37 != i38) {
                        configuration.screenWidthDp = i38;
                    }
                    int i39 = configuration3.screenHeightDp;
                    int i40 = configuration4.screenHeightDp;
                    if (i39 != i40) {
                        configuration.screenHeightDp = i40;
                    }
                    int i41 = configuration3.smallestScreenWidthDp;
                    int i42 = configuration4.smallestScreenWidthDp;
                    if (i41 != i42) {
                        configuration.smallestScreenWidthDp = i42;
                    }
                    int i43 = configuration3.densityDpi;
                    int i44 = configuration4.densityDpi;
                    if (i43 != i44) {
                        configuration.densityDpi = i44;
                    }
                }
            }
            Configuration D3 = D(context, M3, configuration, true);
            C0972d c0972d = new C0972d(R.style.Theme_AppCompat_Empty, context);
            c0972d.a(D3);
            try {
                z4 = context.getTheme() != null;
            } catch (NullPointerException unused3) {
            }
            if (z4) {
                c0972d.getTheme().rebase();
            }
            return c0972d;
        }
        return context;
    }

    @Override // e.r
    public final View e(int i4) {
        G();
        return this.f8827m.findViewById(i4);
    }

    @Override // e.r
    public final Context f() {
        return this.f8826l;
    }

    @Override // e.r
    public final int g() {
        return this.f8810U;
    }

    @Override // e.r
    public final MenuInflater h() {
        if (this.f8831q == null) {
            L();
            T t4 = this.f8830p;
            this.f8831q = new i.j(t4 != null ? t4.c() : this.f8826l);
        }
        return this.f8831q;
    }

    @Override // e.r
    public final void i() {
        LayoutInflater from = LayoutInflater.from(this.f8826l);
        if (from.getFactory() == null) {
            from.setFactory2(this);
        } else if (from.getFactory2() instanceof LayoutInflater$Factory2C0803D) {
        } else {
            Log.i("AppCompatDelegate", "The Activity's LayoutInflater already has a Factory installed so we can not install AppCompat's");
        }
    }

    @Override // e.r
    public final void j() {
        if (this.f8830p != null) {
            L();
            this.f8830p.getClass();
            this.f8817b0 |= 1;
            if (this.f8816a0) {
                return;
            }
            View decorView = this.f8827m.getDecorView();
            RunnableC0826s runnableC0826s = this.f8818c0;
            WeakHashMap weakHashMap = androidx.core.view.J.f3079a;
            C0186x.j(decorView, runnableC0826s);
            this.f8816a0 = true;
        }
    }

    @Override // e.r
    public final void l() {
        if (this.f8797H && this.f8791B) {
            L();
            T t4 = this.f8830p;
            if (t4 != null) {
                t4.f(t4.f8880a.getResources().getBoolean(R.bool.abc_action_bar_embed_tabs));
            }
        }
        C1117A a4 = C1117A.a();
        Context context = this.f8826l;
        synchronized (a4) {
            H0 h02 = a4.f10719a;
            synchronized (h02) {
                q.j jVar = (q.j) h02.f10772b.get(context);
                if (jVar != null) {
                    jVar.a();
                }
            }
        }
        this.f8809T = new Configuration(this.f8826l.getResources().getConfiguration());
        y(false, false);
    }

    @Override // e.r
    public final void m() {
        String str;
        this.f8806Q = true;
        y(false, true);
        H();
        Object obj = this.f8825k;
        if (obj instanceof Activity) {
            try {
                Activity activity = (Activity) obj;
                try {
                    str = B.h.c(activity, activity.getComponentName());
                } catch (PackageManager.NameNotFoundException e4) {
                    throw new IllegalArgumentException(e4);
                }
            } catch (IllegalArgumentException unused) {
                str = null;
            }
            if (str != null) {
                T t4 = this.f8830p;
                if (t4 == null) {
                    this.f8819d0 = true;
                } else {
                    t4.e(true);
                }
            }
            synchronized (r.f8987i) {
                r.r(this);
                r.f8986h.add(new WeakReference(this));
            }
        }
        this.f8809T = new Configuration(this.f8826l.getResources().getConfiguration());
        this.f8807R = true;
    }

    /* JADX WARN: Removed duplicated region for block: B:25:0x0060  */
    /* JADX WARN: Removed duplicated region for block: B:28:0x0067  */
    /* JADX WARN: Removed duplicated region for block: B:32:? A[RETURN, SYNTHETIC] */
    @Override // e.r
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void n() {
        /*
            r3 = this;
            java.lang.Object r0 = r3.f8825k
            boolean r0 = r0 instanceof android.app.Activity
            if (r0 == 0) goto L11
            java.lang.Object r0 = e.r.f8987i
            monitor-enter(r0)
            e.r.r(r3)     // Catch: java.lang.Throwable -> Le
            monitor-exit(r0)     // Catch: java.lang.Throwable -> Le
            goto L11
        Le:
            r3 = move-exception
            monitor-exit(r0)     // Catch: java.lang.Throwable -> Le
            throw r3
        L11:
            boolean r0 = r3.f8816a0
            if (r0 == 0) goto L20
            android.view.Window r0 = r3.f8827m
            android.view.View r0 = r0.getDecorView()
            e.s r1 = r3.f8818c0
            r0.removeCallbacks(r1)
        L20:
            r0 = 1
            r3.f8808S = r0
            int r0 = r3.f8810U
            r1 = -100
            if (r0 == r1) goto L4d
            java.lang.Object r0 = r3.f8825k
            boolean r1 = r0 instanceof android.app.Activity
            if (r1 == 0) goto L4d
            android.app.Activity r0 = (android.app.Activity) r0
            boolean r0 = r0.isChangingConfigurations()
            if (r0 == 0) goto L4d
            q.m r0 = e.LayoutInflater$Factory2C0803D.f8786j0
            java.lang.Object r1 = r3.f8825k
            java.lang.Class r1 = r1.getClass()
            java.lang.String r1 = r1.getName()
            int r2 = r3.f8810U
            java.lang.Integer r2 = java.lang.Integer.valueOf(r2)
            r0.put(r1, r2)
            goto L5c
        L4d:
            q.m r0 = e.LayoutInflater$Factory2C0803D.f8786j0
            java.lang.Object r1 = r3.f8825k
            java.lang.Class r1 = r1.getClass()
            java.lang.String r1 = r1.getName()
            r0.remove(r1)
        L5c:
            e.y r0 = r3.f8814Y
            if (r0 == 0) goto L63
            r0.a()
        L63:
            e.y r3 = r3.f8815Z
            if (r3 == 0) goto L6a
            r3.a()
        L6a:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: e.LayoutInflater$Factory2C0803D.n():void");
    }

    @Override // e.r
    public final void o() {
        L();
        T t4 = this.f8830p;
        if (t4 != null) {
            t4.f8900u = true;
        }
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code restructure failed: missing block: B:62:0x0114, code lost:
        if (r8.equals("ImageButton") == false) goto L117;
     */
    @Override // android.view.LayoutInflater.Factory2
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final android.view.View onCreateView(android.view.View r7, java.lang.String r8, android.content.Context r9, android.util.AttributeSet r10) {
        /*
            Method dump skipped, instructions count: 636
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: e.LayoutInflater$Factory2C0803D.onCreateView(android.view.View, java.lang.String, android.content.Context, android.util.AttributeSet):android.view.View");
    }

    @Override // e.r
    public final void p() {
        y(true, false);
    }

    @Override // e.r
    public final void q() {
        L();
        T t4 = this.f8830p;
        if (t4 != null) {
            t4.f8900u = false;
            i.l lVar = t4.f8899t;
            if (lVar != null) {
                lVar.a();
            }
        }
    }

    @Override // e.r
    public final boolean s(int i4) {
        if (i4 == 8) {
            Log.i("AppCompatDelegate", "You should now use the AppCompatDelegate.FEATURE_SUPPORT_ACTION_BAR id when requesting this feature.");
            i4 = 108;
        } else if (i4 == 9) {
            Log.i("AppCompatDelegate", "You should now use the AppCompatDelegate.FEATURE_SUPPORT_ACTION_BAR_OVERLAY id when requesting this feature.");
            i4 = 109;
        }
        if (this.f8801L && i4 == 108) {
            return false;
        }
        if (this.f8797H && i4 == 1) {
            this.f8797H = false;
        }
        if (i4 == 1) {
            R();
            this.f8801L = true;
            return true;
        } else if (i4 == 2) {
            R();
            this.f8795F = true;
            return true;
        } else if (i4 == 5) {
            R();
            this.f8796G = true;
            return true;
        } else if (i4 == 10) {
            R();
            this.f8799J = true;
            return true;
        } else if (i4 == 108) {
            R();
            this.f8797H = true;
            return true;
        } else if (i4 != 109) {
            return this.f8827m.requestFeature(i4);
        } else {
            R();
            this.f8798I = true;
            return true;
        }
    }

    @Override // e.r
    public final void t(int i4) {
        G();
        ViewGroup viewGroup = (ViewGroup) this.f8792C.findViewById(16908290);
        viewGroup.removeAllViews();
        LayoutInflater.from(this.f8826l).inflate(i4, viewGroup);
        this.f8828n.a(this.f8827m.getCallback());
    }

    @Override // e.r
    public final void u(View view) {
        G();
        ViewGroup viewGroup = (ViewGroup) this.f8792C.findViewById(16908290);
        viewGroup.removeAllViews();
        viewGroup.addView(view);
        this.f8828n.a(this.f8827m.getCallback());
    }

    @Override // e.r
    public final void v(View view, ViewGroup.LayoutParams layoutParams) {
        G();
        ViewGroup viewGroup = (ViewGroup) this.f8792C.findViewById(16908290);
        viewGroup.removeAllViews();
        viewGroup.addView(view, layoutParams);
        this.f8828n.a(this.f8827m.getCallback());
    }

    @Override // e.r
    public final void w(int i4) {
        this.f8811V = i4;
    }

    @Override // e.r
    public final void x(CharSequence charSequence) {
        this.f8832r = charSequence;
        InterfaceC1150m0 interfaceC1150m0 = this.f8833s;
        if (interfaceC1150m0 != null) {
            interfaceC1150m0.a(charSequence);
            return;
        }
        T t4 = this.f8830p;
        if (t4 != null) {
            t4.f8884e.a(charSequence);
            return;
        }
        TextView textView = this.f8793D;
        if (textView != null) {
            textView.setText(charSequence);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:102:0x01a3  */
    /* JADX WARN: Removed duplicated region for block: B:25:0x005b  */
    /* JADX WARN: Removed duplicated region for block: B:28:0x0077  */
    /* JADX WARN: Removed duplicated region for block: B:37:0x00a6  */
    /* JADX WARN: Removed duplicated region for block: B:38:0x00a9  */
    /* JADX WARN: Removed duplicated region for block: B:41:0x00ae A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:54:0x00ce  */
    /* JADX WARN: Removed duplicated region for block: B:58:0x00ef A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:83:0x0160  */
    /* JADX WARN: Removed duplicated region for block: B:92:0x017c  */
    /* JADX WARN: Removed duplicated region for block: B:93:0x0186  */
    /* JADX WARN: Removed duplicated region for block: B:98:0x0190  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean y(boolean r14, boolean r15) {
        /*
            Method dump skipped, instructions count: 427
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: e.LayoutInflater$Factory2C0803D.y(boolean, boolean):boolean");
    }

    public final void z(Window window) {
        Drawable drawable;
        w wVar;
        int resourceId;
        if (this.f8827m != null) {
            throw new IllegalStateException("AppCompat has already installed itself into the Window");
        }
        Window.Callback callback = window.getCallback();
        if (callback instanceof x) {
            throw new IllegalStateException("AppCompat has already installed itself into the Window");
        }
        x xVar = new x(this, callback);
        this.f8828n = xVar;
        window.setCallback(xVar);
        Context context = this.f8826l;
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes((AttributeSet) null, f8787k0);
        if (!obtainStyledAttributes.hasValue(0) || (resourceId = obtainStyledAttributes.getResourceId(0, 0)) == 0) {
            drawable = null;
        } else {
            C1117A a4 = C1117A.a();
            synchronized (a4) {
                drawable = a4.f10719a.f(context, true, resourceId);
            }
        }
        if (drawable != null) {
            window.setBackgroundDrawable(drawable);
        }
        obtainStyledAttributes.recycle();
        this.f8827m = window;
        OnBackInvokedDispatcher onBackInvokedDispatcher = this.f8823h0;
        if (onBackInvokedDispatcher == null) {
            if (onBackInvokedDispatcher != null && (wVar = this.f8824i0) != null) {
                onBackInvokedDispatcher.unregisterOnBackInvokedCallback(wVar);
                this.f8824i0 = null;
            }
            Object obj = this.f8825k;
            if (!(obj instanceof Activity) || ((Activity) obj).getWindow() == null) {
                this.f8823h0 = null;
            } else {
                this.f8823h0 = ((Activity) this.f8825k).getOnBackInvokedDispatcher();
            }
            S();
        }
    }

    @Override // android.view.LayoutInflater.Factory
    public final View onCreateView(String str, Context context, AttributeSet attributeSet) {
        return onCreateView(null, str, context, attributeSet);
    }
}
