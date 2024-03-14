package R;

import android.graphics.Rect;
import android.text.method.TransformationMethod;
import android.view.View;
/* loaded from: classes.dex */
public final class p implements TransformationMethod {

    /* renamed from: a  reason: collision with root package name */
    public final TransformationMethod f1635a;

    public p(TransformationMethod transformationMethod) {
        this.f1635a = transformationMethod;
    }

    @Override // android.text.method.TransformationMethod
    public final CharSequence getTransformation(CharSequence charSequence, View view) {
        if (view.isInEditMode()) {
            return charSequence;
        }
        TransformationMethod transformationMethod = this.f1635a;
        if (transformationMethod != null) {
            charSequence = transformationMethod.getTransformation(charSequence, view);
        }
        if (charSequence == null) {
            return charSequence;
        }
        androidx.emoji2.text.b.a();
        throw null;
    }

    @Override // android.text.method.TransformationMethod
    public final void onFocusChanged(View view, CharSequence charSequence, boolean z4, int i4, Rect rect) {
        TransformationMethod transformationMethod = this.f1635a;
        if (transformationMethod != null) {
            transformationMethod.onFocusChanged(view, charSequence, z4, i4, rect);
        }
    }
}
