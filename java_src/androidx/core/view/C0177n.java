package androidx.core.view;

import android.util.Log;
import android.view.View;
import android.view.ViewParent;
/* renamed from: androidx.core.view.n  reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0177n {

    /* renamed from: a  reason: collision with root package name */
    public ViewParent f3120a;

    /* renamed from: b  reason: collision with root package name */
    public ViewParent f3121b;

    /* renamed from: c  reason: collision with root package name */
    public final View f3122c;

    /* renamed from: d  reason: collision with root package name */
    public boolean f3123d;

    /* renamed from: e  reason: collision with root package name */
    public int[] f3124e;

    public C0177n(View view) {
        this.f3122c = view;
    }

    public final boolean a(float f4, float f5, boolean z4) {
        ViewParent f6;
        if (!this.f3123d || (f6 = f(0)) == null) {
            return false;
        }
        try {
            return f6.onNestedFling(this.f3122c, f4, f5, z4);
        } catch (AbstractMethodError e4) {
            Log.e("ViewParentCompat", "ViewParent " + f6 + " does not implement interface method onNestedFling", e4);
            return false;
        }
    }

    public final boolean b(float f4, float f5) {
        ViewParent f6;
        if (!this.f3123d || (f6 = f(0)) == null) {
            return false;
        }
        try {
            return f6.onNestedPreFling(this.f3122c, f4, f5);
        } catch (AbstractMethodError e4) {
            Log.e("ViewParentCompat", "ViewParent " + f6 + " does not implement interface method onNestedPreFling", e4);
            return false;
        }
    }

    public final boolean c(int i4, int i5, int[] iArr, int[] iArr2, int i6) {
        ViewParent f4;
        int i7;
        int i8;
        int[] iArr3;
        if (!this.f3123d || (f4 = f(i6)) == null) {
            return false;
        }
        if (i4 == 0 && i5 == 0) {
            if (iArr2 != null) {
                iArr2[0] = 0;
                iArr2[1] = 0;
                return false;
            }
            return false;
        }
        View view = this.f3122c;
        if (iArr2 != null) {
            view.getLocationInWindow(iArr2);
            int i9 = iArr2[0];
            i8 = iArr2[1];
            i7 = i9;
        } else {
            i7 = 0;
            i8 = 0;
        }
        if (iArr == null) {
            if (this.f3124e == null) {
                this.f3124e = new int[2];
            }
            iArr3 = this.f3124e;
        } else {
            iArr3 = iArr;
        }
        iArr3[0] = 0;
        iArr3[1] = 0;
        View view2 = this.f3122c;
        if (f4 instanceof InterfaceC0178o) {
            ((InterfaceC0178o) f4).l(view2, i4, i5, iArr3, i6);
        } else if (i6 == 0) {
            try {
                f4.onNestedPreScroll(view2, i4, i5, iArr3);
            } catch (AbstractMethodError e4) {
                Log.e("ViewParentCompat", "ViewParent " + f4 + " does not implement interface method onNestedPreScroll", e4);
            }
        }
        if (iArr2 != null) {
            view.getLocationInWindow(iArr2);
            iArr2[0] = iArr2[0] - i7;
            iArr2[1] = iArr2[1] - i8;
        }
        return (iArr3[0] == 0 && iArr3[1] == 0) ? false : true;
    }

    public final void d(int i4, int i5, int i6, int[] iArr) {
        e(0, i4, 0, i5, null, i6, iArr);
    }

    public final boolean e(int i4, int i5, int i6, int i7, int[] iArr, int i8, int[] iArr2) {
        ViewParent f4;
        int i9;
        int i10;
        int[] iArr3;
        if (!this.f3123d || (f4 = f(i8)) == null) {
            return false;
        }
        if (i4 == 0 && i5 == 0 && i6 == 0 && i7 == 0) {
            if (iArr != null) {
                iArr[0] = 0;
                iArr[1] = 0;
            }
            return false;
        }
        View view = this.f3122c;
        if (iArr != null) {
            view.getLocationInWindow(iArr);
            i9 = iArr[0];
            i10 = iArr[1];
        } else {
            i9 = 0;
            i10 = 0;
        }
        if (iArr2 == null) {
            if (this.f3124e == null) {
                this.f3124e = new int[2];
            }
            int[] iArr4 = this.f3124e;
            iArr4[0] = 0;
            iArr4[1] = 0;
            iArr3 = iArr4;
        } else {
            iArr3 = iArr2;
        }
        View view2 = this.f3122c;
        if (f4 instanceof InterfaceC0179p) {
            ((InterfaceC0179p) f4).o(view2, i4, i5, i6, i7, i8, iArr3);
        } else {
            iArr3[0] = iArr3[0] + i6;
            iArr3[1] = iArr3[1] + i7;
            if (f4 instanceof InterfaceC0178o) {
                ((InterfaceC0178o) f4).p(view2, i4, i5, i6, i7, i8);
            } else if (i8 == 0) {
                try {
                    f4.onNestedScroll(view2, i4, i5, i6, i7);
                } catch (AbstractMethodError e4) {
                    Log.e("ViewParentCompat", "ViewParent " + f4 + " does not implement interface method onNestedScroll", e4);
                }
            }
        }
        if (iArr != null) {
            view.getLocationInWindow(iArr);
            iArr[0] = iArr[0] - i9;
            iArr[1] = iArr[1] - i10;
        }
        return true;
    }

    public final ViewParent f(int i4) {
        if (i4 != 0) {
            if (i4 != 1) {
                return null;
            }
            return this.f3121b;
        }
        return this.f3120a;
    }

    public final boolean g(int i4, int i5) {
        boolean onStartNestedScroll;
        if (f(i5) != null) {
            return true;
        }
        if (this.f3123d) {
            View view = this.f3122c;
            View view2 = view;
            for (ViewParent parent = view.getParent(); parent != null; parent = parent.getParent()) {
                boolean z4 = parent instanceof InterfaceC0178o;
                if (z4) {
                    onStartNestedScroll = ((InterfaceC0178o) parent).q(view2, view, i4, i5);
                } else {
                    if (i5 == 0) {
                        try {
                            onStartNestedScroll = parent.onStartNestedScroll(view2, view, i4);
                        } catch (AbstractMethodError e4) {
                            Log.e("ViewParentCompat", "ViewParent " + parent + " does not implement interface method onStartNestedScroll", e4);
                        }
                    }
                    onStartNestedScroll = false;
                }
                if (onStartNestedScroll) {
                    if (i5 == 0) {
                        this.f3120a = parent;
                    } else if (i5 == 1) {
                        this.f3121b = parent;
                    }
                    if (z4) {
                        ((InterfaceC0178o) parent).j(view2, view, i4, i5);
                    } else if (i5 == 0) {
                        try {
                            parent.onNestedScrollAccepted(view2, view, i4);
                        } catch (AbstractMethodError e5) {
                            Log.e("ViewParentCompat", "ViewParent " + parent + " does not implement interface method onNestedScrollAccepted", e5);
                        }
                    }
                    return true;
                }
                if (parent instanceof View) {
                    view2 = parent;
                }
            }
        }
        return false;
    }

    public final void h(int i4) {
        ViewParent f4 = f(i4);
        if (f4 != null) {
            boolean z4 = f4 instanceof InterfaceC0178o;
            View view = this.f3122c;
            if (z4) {
                ((InterfaceC0178o) f4).k(view, i4);
            } else if (i4 == 0) {
                try {
                    f4.onStopNestedScroll(view);
                } catch (AbstractMethodError e4) {
                    Log.e("ViewParentCompat", "ViewParent " + f4 + " does not implement interface method onStopNestedScroll", e4);
                }
            }
            if (i4 == 0) {
                this.f3120a = null;
            } else if (i4 != 1) {
            } else {
                this.f3121b = null;
            }
        }
    }
}
