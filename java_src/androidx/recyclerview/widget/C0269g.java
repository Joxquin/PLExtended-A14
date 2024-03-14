package androidx.recyclerview.widget;

import android.util.Log;
import android.view.View;
import android.view.ViewGroup;
import java.util.ArrayList;
import java.util.List;
/* renamed from: androidx.recyclerview.widget.g  reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0269g {

    /* renamed from: a  reason: collision with root package name */
    public final Y f3936a;

    /* renamed from: b  reason: collision with root package name */
    public final C0267f f3937b = new C0267f();

    /* renamed from: c  reason: collision with root package name */
    public final List f3938c = new ArrayList();

    public C0269g(Y y4) {
        this.f3936a = y4;
    }

    public final void a(View view, int i4, boolean z4) {
        Y y4 = this.f3936a;
        int c4 = i4 < 0 ? y4.c() : f(i4);
        this.f3937b.e(c4, z4);
        if (z4) {
            i(view);
        }
        RecyclerView recyclerView = y4.f3917a;
        recyclerView.addView(view, c4);
        recyclerView.dispatchChildAttached(view);
    }

    public final void b(View view, int i4, ViewGroup.LayoutParams layoutParams, boolean z4) {
        Y y4 = this.f3936a;
        int c4 = i4 < 0 ? y4.c() : f(i4);
        this.f3937b.e(c4, z4);
        if (z4) {
            i(view);
        }
        y4.getClass();
        E0 childViewHolderInt = RecyclerView.getChildViewHolderInt(view);
        RecyclerView recyclerView = y4.f3917a;
        if (childViewHolderInt != null) {
            if (!childViewHolderInt.isTmpDetached() && !childViewHolderInt.shouldIgnore()) {
                StringBuilder sb = new StringBuilder("Called attach on a child which is not detached: ");
                sb.append(childViewHolderInt);
                throw new IllegalArgumentException(C0265e.a(recyclerView, sb));
            }
            if (RecyclerView.sVerboseLoggingEnabled) {
                Log.d("RecyclerView", "reAttach " + childViewHolderInt);
            }
            childViewHolderInt.mFlags &= -257;
        } else if (RecyclerView.sDebugAssertionsEnabled) {
            StringBuilder sb2 = new StringBuilder("No ViewHolder found for child: ");
            sb2.append(view);
            sb2.append(", index: ");
            sb2.append(c4);
            throw new IllegalArgumentException(C0265e.a(recyclerView, sb2));
        }
        recyclerView.attachViewToParent(view, c4, layoutParams);
    }

    public final void c(int i4) {
        int f4 = f(i4);
        this.f3937b.f(f4);
        Y y4 = this.f3936a;
        View childAt = y4.f3917a.getChildAt(f4);
        RecyclerView recyclerView = y4.f3917a;
        if (childAt != null) {
            E0 childViewHolderInt = RecyclerView.getChildViewHolderInt(childAt);
            if (childViewHolderInt != null) {
                if (childViewHolderInt.isTmpDetached() && !childViewHolderInt.shouldIgnore()) {
                    StringBuilder sb = new StringBuilder("called detach on an already detached child ");
                    sb.append(childViewHolderInt);
                    throw new IllegalArgumentException(C0265e.a(recyclerView, sb));
                }
                if (RecyclerView.sVerboseLoggingEnabled) {
                    Log.d("RecyclerView", "tmpDetach " + childViewHolderInt);
                }
                childViewHolderInt.addFlags(256);
            }
        } else if (RecyclerView.sDebugAssertionsEnabled) {
            StringBuilder sb2 = new StringBuilder("No view at offset ");
            sb2.append(f4);
            throw new IllegalArgumentException(C0265e.a(recyclerView, sb2));
        }
        recyclerView.detachViewFromParent(f4);
    }

    public final View d(int i4) {
        return this.f3936a.f3917a.getChildAt(f(i4));
    }

    public final int e() {
        return this.f3936a.c() - ((ArrayList) this.f3938c).size();
    }

    public final int f(int i4) {
        if (i4 < 0) {
            return -1;
        }
        int c4 = this.f3936a.c();
        int i5 = i4;
        while (i5 < c4) {
            C0267f c0267f = this.f3937b;
            int b4 = i4 - (i5 - c0267f.b(i5));
            if (b4 == 0) {
                while (c0267f.d(i5)) {
                    i5++;
                }
                return i5;
            }
            i5 += b4;
        }
        return -1;
    }

    public final View g(int i4) {
        return this.f3936a.f3917a.getChildAt(i4);
    }

    public final int h() {
        return this.f3936a.c();
    }

    public final void i(View view) {
        ((ArrayList) this.f3938c).add(view);
        Y y4 = this.f3936a;
        y4.getClass();
        E0 childViewHolderInt = RecyclerView.getChildViewHolderInt(view);
        if (childViewHolderInt != null) {
            childViewHolderInt.onEnteredHiddenState(y4.f3917a);
        }
    }

    public final boolean j(View view) {
        return ((ArrayList) this.f3938c).contains(view);
    }

    public final void k(View view) {
        if (((ArrayList) this.f3938c).remove(view)) {
            Y y4 = this.f3936a;
            y4.getClass();
            E0 childViewHolderInt = RecyclerView.getChildViewHolderInt(view);
            if (childViewHolderInt != null) {
                childViewHolderInt.onLeftHiddenState(y4.f3917a);
            }
        }
    }

    public final String toString() {
        return this.f3937b.toString() + ", hidden list:" + ((ArrayList) this.f3938c).size();
    }
}
