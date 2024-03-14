package androidx.emoji2.text;

import android.text.Editable;
import android.text.SpanWatcher;
import android.text.Spannable;
import android.text.TextWatcher;
import java.util.concurrent.atomic.AtomicInteger;
/* loaded from: classes.dex */
public final class e implements TextWatcher, SpanWatcher {

    /* renamed from: d  reason: collision with root package name */
    public final Object f3225d;

    /* renamed from: e  reason: collision with root package name */
    public final AtomicInteger f3226e = new AtomicInteger(0);

    public e(Object obj) {
        this.f3225d = obj;
    }

    @Override // android.text.TextWatcher
    public final void afterTextChanged(Editable editable) {
        ((TextWatcher) this.f3225d).afterTextChanged(editable);
    }

    @Override // android.text.TextWatcher
    public final void beforeTextChanged(CharSequence charSequence, int i4, int i5, int i6) {
        ((TextWatcher) this.f3225d).beforeTextChanged(charSequence, i4, i5, i6);
    }

    @Override // android.text.SpanWatcher
    public final void onSpanAdded(Spannable spannable, Object obj, int i4, int i5) {
        if (this.f3226e.get() <= 0 || !(obj instanceof d)) {
            ((SpanWatcher) this.f3225d).onSpanAdded(spannable, obj, i4, i5);
        }
    }

    @Override // android.text.SpanWatcher
    public final void onSpanChanged(Spannable spannable, Object obj, int i4, int i5, int i6, int i7) {
        if (this.f3226e.get() <= 0 || !(obj instanceof d)) {
            ((SpanWatcher) this.f3225d).onSpanChanged(spannable, obj, i4, i5, i6, i7);
        }
    }

    @Override // android.text.SpanWatcher
    public final void onSpanRemoved(Spannable spannable, Object obj, int i4, int i5) {
        if (this.f3226e.get() <= 0 || !(obj instanceof d)) {
            ((SpanWatcher) this.f3225d).onSpanRemoved(spannable, obj, i4, i5);
        }
    }

    @Override // android.text.TextWatcher
    public final void onTextChanged(CharSequence charSequence, int i4, int i5, int i6) {
        ((TextWatcher) this.f3225d).onTextChanged(charSequence, i4, i5, i6);
    }
}
