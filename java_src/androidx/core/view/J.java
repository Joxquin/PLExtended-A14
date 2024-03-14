package androidx.core.view;

import android.util.Log;
import android.view.View;
import android.view.ViewParent;
import android.view.WindowInsets;
import android.view.accessibility.AccessibilityEvent;
import android.view.accessibility.AccessibilityManager;
import com.android.systemui.shared.R;
import java.util.ArrayList;
import java.util.List;
import java.util.WeakHashMap;
import java.util.concurrent.atomic.AtomicInteger;
/* loaded from: classes.dex */
public final class J {

    /* renamed from: a  reason: collision with root package name */
    public static WeakHashMap f3079a;

    /* renamed from: b  reason: collision with root package name */
    public static final int[] f3080b;

    /* renamed from: c  reason: collision with root package name */
    public static final ViewCompat$$ExternalSyntheticLambda0 f3081c;

    /* renamed from: d  reason: collision with root package name */
    public static final ViewTreeObserver$OnGlobalLayoutListenerC0183u f3082d;

    static {
        new AtomicInteger(1);
        f3079a = null;
        f3080b = new int[]{R.id.accessibility_custom_action_0, R.id.accessibility_custom_action_1, R.id.accessibility_custom_action_2, R.id.accessibility_custom_action_3, R.id.accessibility_custom_action_4, R.id.accessibility_custom_action_5, R.id.accessibility_custom_action_6, R.id.accessibility_custom_action_7, R.id.accessibility_custom_action_8, R.id.accessibility_custom_action_9, R.id.accessibility_custom_action_10, R.id.accessibility_custom_action_11, R.id.accessibility_custom_action_12, R.id.accessibility_custom_action_13, R.id.accessibility_custom_action_14, R.id.accessibility_custom_action_15, R.id.accessibility_custom_action_16, R.id.accessibility_custom_action_17, R.id.accessibility_custom_action_18, R.id.accessibility_custom_action_19, R.id.accessibility_custom_action_20, R.id.accessibility_custom_action_21, R.id.accessibility_custom_action_22, R.id.accessibility_custom_action_23, R.id.accessibility_custom_action_24, R.id.accessibility_custom_action_25, R.id.accessibility_custom_action_26, R.id.accessibility_custom_action_27, R.id.accessibility_custom_action_28, R.id.accessibility_custom_action_29, R.id.accessibility_custom_action_30, R.id.accessibility_custom_action_31};
        f3081c = new ViewCompat$$ExternalSyntheticLambda0();
        f3082d = new ViewTreeObserver$OnGlobalLayoutListenerC0183u();
    }

    public static O a(View view) {
        if (f3079a == null) {
            f3079a = new WeakHashMap();
        }
        O o4 = (O) f3079a.get(view);
        if (o4 == null) {
            O o5 = new O(view);
            f3079a.put(view, o5);
            return o5;
        }
        return o4;
    }

    public static c0 b(View view, c0 c0Var) {
        WindowInsets f4 = c0Var.f();
        if (f4 != null) {
            WindowInsets a4 = B.a(view, f4);
            if (!a4.equals(f4)) {
                return c0.g(a4, view);
            }
        }
        return c0Var;
    }

    public static List c(View view) {
        ArrayList arrayList = (ArrayList) view.getTag(R.id.tag_accessibility_actions);
        if (arrayList == null) {
            ArrayList arrayList2 = new ArrayList();
            view.setTag(R.id.tag_accessibility_actions, arrayList2);
            return arrayList2;
        }
        return arrayList;
    }

    public static void d(View view, int i4) {
        AccessibilityManager accessibilityManager = (AccessibilityManager) view.getContext().getSystemService("accessibility");
        if (accessibilityManager.isEnabled()) {
            boolean z4 = ((CharSequence) new C0182t(R.id.tag_accessibility_pane_title, CharSequence.class, 8, 28, 1).b(view)) != null && view.isShown() && view.getWindowVisibility() == 0;
            if (A.a(view) != 0 || z4) {
                AccessibilityEvent obtain = AccessibilityEvent.obtain();
                obtain.setEventType(z4 ? 32 : 2048);
                A.f(obtain, i4);
                if (z4) {
                    obtain.getText().add((CharSequence) new C0182t(R.id.tag_accessibility_pane_title, CharSequence.class, 8, 28, 1).b(view));
                    if (C0186x.b(view) == 0) {
                        C0186x.o(view, 1);
                    }
                    ViewParent parent = view.getParent();
                    while (true) {
                        if (!(parent instanceof View)) {
                            break;
                        } else if (C0186x.b((View) parent) == 4) {
                            C0186x.o(view, 2);
                            break;
                        } else {
                            parent = parent.getParent();
                        }
                    }
                }
                view.sendAccessibilityEventUnchecked(obtain);
            } else if (i4 != 32) {
                if (view.getParent() != null) {
                    try {
                        A.d(view.getParent(), view, view, i4);
                    } catch (AbstractMethodError e4) {
                        Log.e("ViewCompat", view.getParent().getClass().getSimpleName().concat(" does not fully implement ViewParent"), e4);
                    }
                }
            } else {
                AccessibilityEvent obtain2 = AccessibilityEvent.obtain();
                view.onInitializeAccessibilityEvent(obtain2);
                obtain2.setEventType(32);
                A.f(obtain2, i4);
                obtain2.setSource(view);
                view.onPopulateAccessibilityEvent(obtain2);
                obtain2.getText().add((CharSequence) new C0182t(R.id.tag_accessibility_pane_title, CharSequence.class, 8, 28, 1).b(view));
                accessibilityManager.sendAccessibilityEvent(obtain2);
            }
        }
    }

    public static c0 e(View view, c0 c0Var) {
        WindowInsets f4 = c0Var.f();
        if (f4 != null) {
            WindowInsets b4 = B.b(view, f4);
            if (!b4.equals(f4)) {
                return c0.g(b4, view);
            }
        }
        return c0Var;
    }

    public static void f(View view, int i4) {
        List c4 = c(view);
        for (int i5 = 0; i5 < c4.size(); i5++) {
            if (((M.c) c4.get(i5)).a() == i4) {
                c4.remove(i5);
                return;
            }
        }
    }

    public static void g(View view, M.c cVar, M.r rVar) {
        M.c cVar2 = new M.c(null, cVar.f1345b, null, rVar, cVar.f1346c);
        View.AccessibilityDelegate a4 = H.a(view);
        C0165b c0165b = a4 == null ? null : a4 instanceof C0164a ? ((C0164a) a4).f3101a : new C0165b(a4);
        if (c0165b == null) {
            c0165b = new C0165b();
        }
        h(view, c0165b);
        f(view, cVar2.a());
        c(view).add(cVar2);
        d(view, 0);
    }

    public static void h(View view, C0165b c0165b) {
        if (c0165b == null && (H.a(view) instanceof C0164a)) {
            c0165b = new C0165b();
        }
        view.setAccessibilityDelegate(c0165b == null ? null : c0165b.getBridge());
    }

    public static void i(View view, CharSequence charSequence) {
        new C0182t(R.id.tag_accessibility_pane_title, CharSequence.class, 8, 28, 1).c(view, charSequence);
        ViewTreeObserver$OnGlobalLayoutListenerC0183u viewTreeObserver$OnGlobalLayoutListenerC0183u = f3082d;
        if (charSequence == null) {
            viewTreeObserver$OnGlobalLayoutListenerC0183u.f3131d.remove(view);
            view.removeOnAttachStateChangeListener(viewTreeObserver$OnGlobalLayoutListenerC0183u);
            C0186x.l(view.getViewTreeObserver(), viewTreeObserver$OnGlobalLayoutListenerC0183u);
            return;
        }
        viewTreeObserver$OnGlobalLayoutListenerC0183u.f3131d.put(view, Boolean.valueOf(view.isShown() && view.getWindowVisibility() == 0));
        view.addOnAttachStateChangeListener(viewTreeObserver$OnGlobalLayoutListenerC0183u);
        if (A.b(view)) {
            view.getViewTreeObserver().addOnGlobalLayoutListener(viewTreeObserver$OnGlobalLayoutListenerC0183u);
        }
    }
}
