package com.google.android.apps.nexuslauncher.search;

import Y1.B;
import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Paint;
import android.text.Editable;
import android.text.Layout;
import android.text.SpannableStringBuilder;
import android.text.SpannedString;
import android.text.TextUtils;
import android.text.TextWatcher;
import android.text.style.ForegroundColorSpan;
import android.text.style.LineBackgroundSpan;
import android.util.AttributeSet;
import android.util.Log;
import android.widget.FrameLayout;
import android.widget.TextView;
import com.android.launcher3.R$styleable;
import com.android.launcher3.icons.GraphicsUtils;
import com.android.systemui.shared.R;
import com.google.android.apps.nexuslauncher.allapps.C0696s1;
import com.google.android.apps.nexuslauncher.allapps.C0719y0;
import java.util.function.Consumer;
/* loaded from: classes.dex */
public class TypeAheadSearchInputView extends FrameLayout implements TextWatcher {

    /* renamed from: d  reason: collision with root package name */
    public boolean f7586d;

    /* renamed from: e  reason: collision with root package name */
    public final int f7587e;

    /* renamed from: f  reason: collision with root package name */
    public final boolean f7588f;

    /* renamed from: g  reason: collision with root package name */
    public final boolean f7589g;

    /* renamed from: h  reason: collision with root package name */
    public final Paint f7590h;

    /* renamed from: i  reason: collision with root package name */
    public final String f7591i;

    /* renamed from: j  reason: collision with root package name */
    public final String f7592j;

    /* renamed from: k  reason: collision with root package name */
    public final C0719y0 f7593k;

    /* renamed from: l  reason: collision with root package name */
    public final Context f7594l;

    /* renamed from: m  reason: collision with root package name */
    public SearchEditText f7595m;

    /* renamed from: n  reason: collision with root package name */
    public int f7596n;

    /* renamed from: o  reason: collision with root package name */
    public TextView f7597o;

    /* renamed from: p  reason: collision with root package name */
    public boolean f7598p;

    /* renamed from: q  reason: collision with root package name */
    public Consumer f7599q;

    public TypeAheadSearchInputView(Context context) {
        this(context, null, 0);
    }

    public final boolean a() {
        if (this.f7597o.getVisibility() != 4 && (this.f7597o.getText() instanceof SpannedString)) {
            SpannedString spannedString = (SpannedString) this.f7597o.getText();
            return ((LineBackgroundSpan[]) spannedString.getSpans(0, spannedString.length(), LineBackgroundSpan.class)).length > 0;
        }
        return false;
    }

    @Override // android.text.TextWatcher
    public final void afterTextChanged(Editable editable) {
        Consumer consumer = this.f7599q;
        if (consumer != null) {
            consumer.accept(editable);
        }
    }

    public final void b(String str) {
        String obj = this.f7595m.getText().toString();
        SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder(obj);
        if (TextUtils.isEmpty(str)) {
            spannableStringBuilder.append((CharSequence) (this.f7598p ? this.f7592j : this.f7591i));
        } else if (this.f7598p) {
            spannableStringBuilder.append((CharSequence) getResources().getString(R.string.quick_launch_separator_corpus_text_arrow, str));
        } else {
            spannableStringBuilder.append((CharSequence) getResources().getString(R.string.quick_launch_separator_corpus_text_app, str));
        }
        spannableStringBuilder.setSpan(new ForegroundColorSpan(0), 0, obj.length() + 1, 33);
        spannableStringBuilder.setSpan(new ForegroundColorSpan(GraphicsUtils.getAttrColor(17957032, this.f7594l)), obj.length() + 1, spannableStringBuilder.length(), 33);
        this.f7597o.setText(spannableStringBuilder);
        this.f7597o.setVisibility(0);
    }

    @Override // android.text.TextWatcher
    public final void beforeTextChanged(CharSequence charSequence, int i4, int i5, int i6) {
        if (this.f7589g) {
            return;
        }
        if (this.f7593k.x()) {
            this.f7595m.k("Hide_Dismiss");
        } else {
            this.f7597o.setVisibility(4);
        }
    }

    public final void c(String str, String str2, boolean z4) {
        Paint paint = this.f7590h;
        if (paint.measureText(str + "W") >= this.f7596n) {
            return;
        }
        SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder(str);
        spannableStringBuilder.append((CharSequence) str2.substring(str.length()));
        spannableStringBuilder.append((CharSequence) (this.f7598p ? this.f7592j : this.f7591i));
        spannableStringBuilder.setSpan(new B(this, str, str2), 0, str2.length(), 33);
        spannableStringBuilder.setSpan(new ForegroundColorSpan(GraphicsUtils.getAttrColor(17957032, this.f7594l)), str2.length() + 1, spannableStringBuilder.length(), 33);
        this.f7597o.setText(spannableStringBuilder);
        if (!z4 || TextUtils.equals(str, str2)) {
            this.f7597o.setVisibility(0);
        } else {
            this.f7595m.k("Show");
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void onAttachedToWindow() {
        super.onAttachedToWindow();
        this.f7595m.addTextChangedListener(this);
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        this.f7595m.removeTextChangedListener(this);
    }

    @Override // android.view.View
    public final void onFinishInflate() {
        super.onFinishInflate();
        SearchEditText searchEditText = (SearchEditText) findViewById(R.id.input);
        this.f7595m = searchEditText;
        searchEditText.setIsHandwritingDelegate(true);
        this.f7597o = (TextView) findViewById(R.id.hint);
        this.f7595m.setHint(this.f7587e);
        this.f7595m.f7569h = this;
    }

    @Override // android.widget.FrameLayout, android.view.ViewGroup, android.view.View
    public final void onLayout(boolean z4, int i4, int i5, int i6, int i7) {
        super.onLayout(z4, i4, i5, i6, i7);
        Layout layout = this.f7595m.getLayout();
        boolean z5 = false;
        if (layout != null && layout.getEllipsisCount(0) == 0) {
            z5 = true;
        }
        this.f7586d = z5;
        this.f7596n = this.f7595m.getWidth();
        this.f7590h.setTextSize(this.f7595m.getTextSize());
    }

    @Override // android.text.TextWatcher
    public final void onTextChanged(CharSequence charSequence, int i4, int i5, int i6) {
        this.f7595m.setEllipsize(charSequence.length() == 0 ? TextUtils.TruncateAt.END : TextUtils.TruncateAt.START);
    }

    public TypeAheadSearchInputView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public TypeAheadSearchInputView(Context context, AttributeSet attributeSet, int i4) {
        super(context, attributeSet, i4);
        this.f7594l = context;
        FrameLayout.inflate(context, R.layout.typeahead_search_input, this);
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R$styleable.TypeAheadSearchInputView, i4, 0);
        int resourceId = obtainStyledAttributes.getResourceId(0, 0);
        this.f7587e = resourceId;
        obtainStyledAttributes.recycle();
        if (resourceId == 0) {
            Log.w("SuggestiveSearchInputView", "No hint resource specified; Setting hint text is strongly recommended");
        }
        C0719y0 f4 = C0719y0.f(context);
        this.f7593k = f4;
        C0696s1 c0696s1 = f4.f7283p;
        this.f7588f = c0696s1.f7185h;
        this.f7589g = c0696s1.f7190m;
        this.f7591i = context.getText(R.string.quick_launch_chip_text_app).toString();
        this.f7592j = context.getText(R.string.quick_launch_chip_text_arrow).toString();
        this.f7590h = new Paint();
    }
}
