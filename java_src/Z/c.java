package z;

import android.content.Context;
import android.graphics.Rect;
import android.os.Parcelable;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.View;
import androidx.coordinatorlayout.widget.CoordinatorLayout;
/* loaded from: classes.dex */
public abstract class c {
    public c() {
    }

    public boolean a(View view) {
        return false;
    }

    public boolean b(View view, View view2) {
        return false;
    }

    public void c(f fVar) {
    }

    public boolean d(CoordinatorLayout coordinatorLayout, View view, View view2) {
        return false;
    }

    public void e(CoordinatorLayout coordinatorLayout, View view) {
    }

    public void f() {
    }

    public boolean g(CoordinatorLayout coordinatorLayout, View view, MotionEvent motionEvent) {
        return false;
    }

    public boolean h(CoordinatorLayout coordinatorLayout, View view, int i4) {
        return false;
    }

    public boolean i(CoordinatorLayout coordinatorLayout, View view, int i4, int i5, int i6) {
        return false;
    }

    public boolean j(View view) {
        return false;
    }

    public void k(CoordinatorLayout coordinatorLayout, View view, View view2, int i4, int i5, int[] iArr, int i6) {
    }

    public void l(CoordinatorLayout coordinatorLayout, View view, int i4, int i5, int i6, int[] iArr) {
        iArr[0] = iArr[0] + i5;
        iArr[1] = iArr[1] + i6;
    }

    public boolean m(CoordinatorLayout coordinatorLayout, View view, Rect rect, boolean z4) {
        return false;
    }

    public void n(View view, Parcelable parcelable) {
    }

    public Parcelable o(View view) {
        return View.BaseSavedState.EMPTY_STATE;
    }

    public boolean p(CoordinatorLayout coordinatorLayout, View view, View view2, int i4, int i5) {
        return false;
    }

    public void q(CoordinatorLayout coordinatorLayout, View view, View view2, int i4) {
    }

    public boolean r(CoordinatorLayout coordinatorLayout, View view, MotionEvent motionEvent) {
        return false;
    }

    public c(Context context, AttributeSet attributeSet) {
    }
}
