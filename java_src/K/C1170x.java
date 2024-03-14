package k;

import android.content.res.ColorStateList;
import android.graphics.PorterDuff;
import android.graphics.drawable.Drawable;
import android.widget.CheckedTextView;
/* renamed from: k.x  reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C1170x {

    /* renamed from: a  reason: collision with root package name */
    public final CheckedTextView f11018a;

    /* renamed from: b  reason: collision with root package name */
    public ColorStateList f11019b = null;

    /* renamed from: c  reason: collision with root package name */
    public PorterDuff.Mode f11020c = null;

    /* renamed from: d  reason: collision with root package name */
    public boolean f11021d = false;

    /* renamed from: e  reason: collision with root package name */
    public boolean f11022e = false;

    /* renamed from: f  reason: collision with root package name */
    public boolean f11023f;

    public C1170x(CheckedTextView checkedTextView) {
        this.f11018a = checkedTextView;
    }

    public final void a() {
        CheckedTextView checkedTextView = this.f11018a;
        Drawable checkMarkDrawable = checkedTextView.getCheckMarkDrawable();
        if (checkMarkDrawable != null) {
            if (this.f11021d || this.f11022e) {
                Drawable mutate = checkMarkDrawable.mutate();
                if (this.f11021d) {
                    mutate.setTintList(this.f11019b);
                }
                if (this.f11022e) {
                    mutate.setTintMode(this.f11020c);
                }
                if (mutate.isStateful()) {
                    mutate.setState(checkedTextView.getDrawableState());
                }
                checkedTextView.setCheckMarkDrawable(mutate);
            }
        }
    }
}
