package com.google.android.material.timepicker;

import android.content.Context;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.os.Parcelable;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Checkable;
import android.widget.EditText;
import android.widget.FrameLayout;
import android.widget.TextView;
import androidx.core.view.C0187y;
import androidx.core.view.J;
import com.android.systemui.shared.R;
import com.google.android.material.chip.Chip;
import com.google.android.material.textfield.TextInputLayout;
import java.util.WeakHashMap;
import x2.RunnableC1481s;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class ChipTextInputComboView extends FrameLayout implements Checkable {

    /* renamed from: d  reason: collision with root package name */
    public final Chip f8140d;

    /* renamed from: e  reason: collision with root package name */
    public final TextInputLayout f8141e;

    /* renamed from: f  reason: collision with root package name */
    public final EditText f8142f;

    /* renamed from: g  reason: collision with root package name */
    public final C0737a f8143g;

    public ChipTextInputComboView(Context context) {
        this(context, null);
    }

    public final void a(CharSequence charSequence) {
        Chip chip = this.f8140d;
        Resources resources = getResources();
        Parcelable.Creator creator = n.CREATOR;
        chip.setText(String.format(resources.getConfiguration().locale, "%02d", Integer.valueOf(Integer.parseInt(String.valueOf(charSequence)))));
        if (TextUtils.isEmpty(this.f8142f.getText())) {
            return;
        }
        this.f8142f.removeTextChangedListener(this.f8143g);
        this.f8142f.setText((CharSequence) null);
        this.f8142f.addTextChangedListener(this.f8143g);
    }

    @Override // android.widget.Checkable
    public final boolean isChecked() {
        return this.f8140d.isChecked();
    }

    @Override // android.view.View
    public final void onConfigurationChanged(Configuration configuration) {
        super.onConfigurationChanged(configuration);
        this.f8142f.setImeHintLocales(getContext().getResources().getConfiguration().getLocales());
    }

    @Override // android.widget.Checkable
    public final void setChecked(boolean z4) {
        this.f8140d.setChecked(z4);
        this.f8142f.setVisibility(z4 ? 0 : 4);
        this.f8140d.setVisibility(z4 ? 8 : 0);
        if (isChecked()) {
            EditText editText = this.f8142f;
            editText.requestFocus();
            editText.post(new RunnableC1481s(editText));
            if (TextUtils.isEmpty(this.f8142f.getText())) {
                return;
            }
            EditText editText2 = this.f8142f;
            editText2.setSelection(editText2.getText().length());
        }
    }

    @Override // android.view.View
    public final void setOnClickListener(View.OnClickListener onClickListener) {
        this.f8140d.setOnClickListener(onClickListener);
    }

    @Override // android.view.View
    public final void setTag(int i4, Object obj) {
        this.f8140d.setTag(i4, obj);
    }

    @Override // android.widget.Checkable
    public final void toggle() {
        this.f8140d.toggle();
    }

    public ChipTextInputComboView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public ChipTextInputComboView(Context context, AttributeSet attributeSet, int i4) {
        super(context, attributeSet, i4);
        LayoutInflater from = LayoutInflater.from(context);
        Chip chip = (Chip) from.inflate(R.layout.material_time_chip, (ViewGroup) this, false);
        this.f8140d = chip;
        chip.f7844s = "android.view.View";
        TextInputLayout textInputLayout = (TextInputLayout) from.inflate(R.layout.material_time_input, (ViewGroup) this, false);
        this.f8141e = textInputLayout;
        EditText editText = textInputLayout.f8099g;
        this.f8142f = editText;
        editText.setVisibility(4);
        C0737a c0737a = new C0737a(this);
        this.f8143g = c0737a;
        editText.addTextChangedListener(c0737a);
        editText.setImeHintLocales(getContext().getResources().getConfiguration().getLocales());
        addView(chip);
        addView(textInputLayout);
        WeakHashMap weakHashMap = J.f3079a;
        editText.setId(C0187y.a());
        C0187y.g((TextView) findViewById(R.id.material_label), editText.getId());
        editText.setSaveEnabled(false);
        editText.setLongClickable(false);
    }
}
