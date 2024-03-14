package X;

import android.graphics.Canvas;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.view.View;
import androidx.preference.PreferenceFragmentCompat;
import androidx.recyclerview.widget.AbstractC0274i0;
import androidx.recyclerview.widget.E0;
import androidx.recyclerview.widget.RecyclerView;
/* loaded from: classes.dex */
public final class G extends AbstractC0274i0 {

    /* renamed from: d  reason: collision with root package name */
    public Drawable f1941d;

    /* renamed from: e  reason: collision with root package name */
    public int f1942e;

    /* renamed from: f  reason: collision with root package name */
    public boolean f1943f = true;

    /* renamed from: g  reason: collision with root package name */
    public final /* synthetic */ PreferenceFragmentCompat f1944g;

    public G(PreferenceFragmentCompat preferenceFragmentCompat) {
        this.f1944g = preferenceFragmentCompat;
    }

    public final boolean a(RecyclerView recyclerView, View view) {
        E0 childViewHolder = recyclerView.getChildViewHolder(view);
        boolean z4 = false;
        if ((childViewHolder instanceof a0) && ((a0) childViewHolder).f1984h) {
            boolean z5 = this.f1943f;
            int indexOfChild = recyclerView.indexOfChild(view);
            if (indexOfChild < recyclerView.getChildCount() - 1) {
                E0 childViewHolder2 = recyclerView.getChildViewHolder(recyclerView.getChildAt(indexOfChild + 1));
                if ((childViewHolder2 instanceof a0) && ((a0) childViewHolder2).f1983g) {
                    z4 = true;
                }
                return z4;
            }
            return z5;
        }
        return false;
    }

    @Override // androidx.recyclerview.widget.AbstractC0274i0
    public final void getItemOffsets(Rect rect, View view, RecyclerView recyclerView) {
        if (a(recyclerView, view)) {
            rect.bottom = this.f1942e;
        }
    }

    @Override // androidx.recyclerview.widget.AbstractC0274i0
    public final void onDrawOver(Canvas canvas, RecyclerView recyclerView) {
        if (this.f1941d == null) {
            return;
        }
        int childCount = recyclerView.getChildCount();
        int width = recyclerView.getWidth();
        for (int i4 = 0; i4 < childCount; i4++) {
            View childAt = recyclerView.getChildAt(i4);
            if (a(recyclerView, childAt)) {
                int height = childAt.getHeight() + ((int) childAt.getY());
                this.f1941d.setBounds(0, height, width, this.f1942e + height);
                this.f1941d.draw(canvas);
            }
        }
    }
}
