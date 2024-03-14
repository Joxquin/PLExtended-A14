package R;

import android.text.InputFilter;
import android.text.Spanned;
import android.widget.TextView;
/* loaded from: classes.dex */
public final class g implements InputFilter {

    /* renamed from: a  reason: collision with root package name */
    public final TextView f1623a;

    public g(TextView textView) {
        this.f1623a = textView;
    }

    @Override // android.text.InputFilter
    public final CharSequence filter(CharSequence charSequence, int i4, int i5, Spanned spanned, int i6, int i7) {
        if (this.f1623a.isInEditMode()) {
            return charSequence;
        }
        androidx.emoji2.text.b.a();
        throw null;
    }
}
