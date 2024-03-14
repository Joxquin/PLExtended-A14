package androidx.core.view;

import android.os.Build;
import android.text.TextUtils;
import android.view.View;
import java.util.WeakHashMap;
/* renamed from: androidx.core.view.v  reason: case insensitive filesystem */
/* loaded from: classes.dex */
public abstract class AbstractC0184v {

    /* renamed from: a  reason: collision with root package name */
    public final int f3132a;

    /* renamed from: b  reason: collision with root package name */
    public final Class f3133b;

    /* renamed from: c  reason: collision with root package name */
    public final int f3134c;

    /* renamed from: d  reason: collision with root package name */
    public final int f3135d;

    public AbstractC0184v(int i4, Class cls, int i5, int i6) {
        this.f3132a = i4;
        this.f3133b = cls;
        this.f3135d = i5;
        this.f3134c = i6;
    }

    public static boolean a(Boolean bool, Boolean bool2) {
        return (bool != null && bool.booleanValue()) == (bool2 != null && bool2.booleanValue());
    }

    public final Object b(View view) {
        if (!(Build.VERSION.SDK_INT >= this.f3134c)) {
            Object tag = view.getTag(this.f3132a);
            if (this.f3133b.isInstance(tag)) {
                return tag;
            }
            return null;
        }
        C0182t c0182t = (C0182t) this;
        int i4 = c0182t.f3130e;
        switch (i4) {
            case 0:
                return c0182t.d(view);
            case 1:
                switch (i4) {
                    case 1:
                        return G.a(view);
                    default:
                        return I.a(view);
                }
            case 2:
                switch (i4) {
                    case 1:
                        return G.a(view);
                    default:
                        return I.a(view);
                }
            default:
                return c0182t.d(view);
        }
    }

    public final void c(View view, Object obj) {
        boolean a4;
        if (Build.VERSION.SDK_INT >= this.f3134c) {
            int i4 = ((C0182t) this).f3130e;
            switch (i4) {
                case 0:
                    Boolean bool = (Boolean) obj;
                    switch (i4) {
                        case 0:
                            G.f(view, bool.booleanValue());
                            return;
                        default:
                            G.d(view, bool.booleanValue());
                            return;
                    }
                case 1:
                    CharSequence charSequence = (CharSequence) obj;
                    switch (i4) {
                        case 1:
                            G.e(view, charSequence);
                            return;
                        default:
                            I.b(view, charSequence);
                            return;
                    }
                case 2:
                    CharSequence charSequence2 = (CharSequence) obj;
                    switch (i4) {
                        case 1:
                            G.e(view, charSequence2);
                            return;
                        default:
                            I.b(view, charSequence2);
                            return;
                    }
                default:
                    Boolean bool2 = (Boolean) obj;
                    switch (i4) {
                        case 0:
                            G.f(view, bool2.booleanValue());
                            return;
                        default:
                            G.d(view, bool2.booleanValue());
                            return;
                    }
            }
        }
        Object b4 = b(view);
        int i5 = ((C0182t) this).f3130e;
        switch (i5) {
            case 0:
                Boolean bool3 = (Boolean) b4;
                Boolean bool4 = (Boolean) obj;
                switch (i5) {
                    case 0:
                        a4 = a(bool3, bool4);
                        break;
                    default:
                        a4 = a(bool3, bool4);
                        break;
                }
            case 1:
                CharSequence charSequence3 = (CharSequence) b4;
                CharSequence charSequence4 = (CharSequence) obj;
                switch (i5) {
                    case 1:
                        a4 = TextUtils.equals(charSequence3, charSequence4);
                        break;
                    default:
                        a4 = TextUtils.equals(charSequence3, charSequence4);
                        break;
                }
            case 2:
                CharSequence charSequence5 = (CharSequence) b4;
                CharSequence charSequence6 = (CharSequence) obj;
                switch (i5) {
                    case 1:
                        a4 = TextUtils.equals(charSequence5, charSequence6);
                        break;
                    default:
                        a4 = TextUtils.equals(charSequence5, charSequence6);
                        break;
                }
            default:
                Boolean bool5 = (Boolean) b4;
                Boolean bool6 = (Boolean) obj;
                switch (i5) {
                    case 0:
                        a4 = a(bool5, bool6);
                        break;
                    default:
                        a4 = a(bool5, bool6);
                        break;
                }
        }
        if (!a4) {
            WeakHashMap weakHashMap = J.f3079a;
            View.AccessibilityDelegate a5 = H.a(view);
            C0165b c0165b = a5 == null ? null : a5 instanceof C0164a ? ((C0164a) a5).f3101a : new C0165b(a5);
            if (c0165b == null) {
                c0165b = new C0165b();
            }
            J.h(view, c0165b);
            view.setTag(this.f3132a, obj);
            J.d(view, this.f3135d);
        }
    }
}
