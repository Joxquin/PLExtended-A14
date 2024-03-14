package f0;

import android.content.Context;
import android.view.View;
import android.widget.Checkable;
import android.widget.ImageView;
/* loaded from: classes.dex */
public final class z extends ImageView implements Checkable, View.OnClickListener {

    /* renamed from: d  reason: collision with root package name */
    public boolean f9302d;

    /* renamed from: e  reason: collision with root package name */
    public View.OnClickListener f9303e;

    public z(Context context) {
        super(context);
        super.setOnClickListener(this);
    }

    @Override // android.widget.Checkable
    public final boolean isChecked() {
        return this.f9302d;
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        toggle();
    }

    @Override // android.widget.ImageView, android.view.View
    public final int[] onCreateDrawableState(int i4) {
        int[] onCreateDrawableState = super.onCreateDrawableState(i4 + 1);
        if (this.f9302d) {
            ImageView.mergeDrawableStates(onCreateDrawableState, View$OnClickListenerC0833A.f9038m);
        }
        return onCreateDrawableState;
    }

    @Override // android.widget.Checkable
    public final void setChecked(boolean z4) {
        if (this.f9302d != z4) {
            this.f9302d = z4;
            refreshDrawableState();
            View.OnClickListener onClickListener = this.f9303e;
            if (onClickListener != null) {
                onClickListener.onClick(this);
            }
        }
    }

    @Override // android.view.View
    public final void setOnClickListener(View.OnClickListener onClickListener) {
        this.f9303e = onClickListener;
    }

    @Override // android.widget.Checkable
    public final void toggle() {
        setChecked(!this.f9302d);
    }
}
