package androidx.preference;

import X.InterfaceC0079b;
import android.app.Dialog;
import android.content.DialogInterface;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import android.os.Bundle;
import android.text.TextUtils;
import android.view.View;
import android.view.ViewGroup;
import android.view.WindowInsets;
import android.widget.TextView;
import androidx.fragment.app.DialogFragment;
import androidx.fragment.app.K;
import e.C0816h;
import e.C0820l;
import e.DialogInterfaceC0821m;
/* loaded from: classes.dex */
public abstract class PreferenceDialogFragmentCompat extends DialogFragment implements DialogInterface.OnClickListener {

    /* renamed from: d  reason: collision with root package name */
    public DialogPreference f3685d;

    /* renamed from: e  reason: collision with root package name */
    public CharSequence f3686e;

    /* renamed from: f  reason: collision with root package name */
    public CharSequence f3687f;

    /* renamed from: g  reason: collision with root package name */
    public CharSequence f3688g;

    /* renamed from: h  reason: collision with root package name */
    public CharSequence f3689h;

    /* renamed from: i  reason: collision with root package name */
    public int f3690i;

    /* renamed from: j  reason: collision with root package name */
    public BitmapDrawable f3691j;

    /* renamed from: k  reason: collision with root package name */
    public int f3692k;

    public final DialogPreference b() {
        if (this.f3685d == null) {
            this.f3685d = (DialogPreference) ((InterfaceC0079b) getTargetFragment()).findPreference(getArguments().getString("key"));
        }
        return this.f3685d;
    }

    public void d(View view) {
        int i4;
        View findViewById = view.findViewById(16908299);
        if (findViewById != null) {
            CharSequence charSequence = this.f3689h;
            if (TextUtils.isEmpty(charSequence)) {
                i4 = 8;
            } else {
                if (findViewById instanceof TextView) {
                    ((TextView) findViewById).setText(charSequence);
                }
                i4 = 0;
            }
            if (findViewById.getVisibility() != i4) {
                findViewById.setVisibility(i4);
            }
        }
    }

    public abstract void e(boolean z4);

    public void f(C0820l c0820l) {
    }

    @Override // android.content.DialogInterface.OnClickListener
    public final void onClick(DialogInterface dialogInterface, int i4) {
        this.f3692k = i4;
    }

    @Override // androidx.fragment.app.DialogFragment, androidx.fragment.app.K
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        K targetFragment = getTargetFragment();
        if (!(targetFragment instanceof InterfaceC0079b)) {
            throw new IllegalStateException("Target fragment must implement TargetFragment interface");
        }
        InterfaceC0079b interfaceC0079b = (InterfaceC0079b) targetFragment;
        String string = getArguments().getString("key");
        if (bundle != null) {
            this.f3686e = bundle.getCharSequence("PreferenceDialogFragment.title");
            this.f3687f = bundle.getCharSequence("PreferenceDialogFragment.positiveText");
            this.f3688g = bundle.getCharSequence("PreferenceDialogFragment.negativeText");
            this.f3689h = bundle.getCharSequence("PreferenceDialogFragment.message");
            this.f3690i = bundle.getInt("PreferenceDialogFragment.layout", 0);
            Bitmap bitmap = (Bitmap) bundle.getParcelable("PreferenceDialogFragment.icon");
            if (bitmap != null) {
                this.f3691j = new BitmapDrawable(getResources(), bitmap);
                return;
            }
            return;
        }
        DialogPreference dialogPreference = (DialogPreference) interfaceC0079b.findPreference(string);
        this.f3685d = dialogPreference;
        this.f3686e = dialogPreference.f3639d;
        this.f3687f = dialogPreference.f3642g;
        this.f3688g = dialogPreference.f3643h;
        this.f3689h = dialogPreference.f3640e;
        this.f3690i = dialogPreference.f3644i;
        Drawable drawable = dialogPreference.f3641f;
        if (drawable == null || (drawable instanceof BitmapDrawable)) {
            this.f3691j = (BitmapDrawable) drawable;
            return;
        }
        Bitmap createBitmap = Bitmap.createBitmap(drawable.getIntrinsicWidth(), drawable.getIntrinsicHeight(), Bitmap.Config.ARGB_8888);
        Canvas canvas = new Canvas(createBitmap);
        drawable.setBounds(0, 0, canvas.getWidth(), canvas.getHeight());
        drawable.draw(canvas);
        this.f3691j = new BitmapDrawable(getResources(), createBitmap);
    }

    @Override // androidx.fragment.app.DialogFragment
    public final Dialog onCreateDialog() {
        this.f3692k = -2;
        C0820l c0820l = new C0820l(getContext());
        CharSequence charSequence = this.f3686e;
        C0816h c0816h = c0820l.f8976a;
        c0816h.f8917d = charSequence;
        c0816h.f8916c = this.f3691j;
        c0816h.f8920g = this.f3687f;
        c0816h.f8921h = this;
        c0816h.f8922i = this.f3688g;
        c0816h.f8923j = this;
        getContext();
        int i4 = this.f3690i;
        View inflate = i4 != 0 ? getLayoutInflater().inflate(i4, (ViewGroup) null) : null;
        if (inflate != null) {
            d(inflate);
            c0816h.f8930q = inflate;
            c0816h.f8929p = 0;
        } else {
            c0816h.f8919f = this.f3689h;
        }
        f(c0820l);
        DialogInterfaceC0821m a4 = c0820l.a();
        if (this instanceof EditTextPreferenceDialogFragmentCompat) {
            a4.getWindow().getDecorView().getWindowInsetsController().show(WindowInsets.Type.ime());
        }
        return a4;
    }

    @Override // androidx.fragment.app.DialogFragment, android.content.DialogInterface.OnDismissListener
    public final void onDismiss(DialogInterface dialogInterface) {
        super.onDismiss(dialogInterface);
        e(this.f3692k == -1);
    }

    @Override // androidx.fragment.app.DialogFragment, androidx.fragment.app.K
    public void onSaveInstanceState(Bundle bundle) {
        super.onSaveInstanceState(bundle);
        bundle.putCharSequence("PreferenceDialogFragment.title", this.f3686e);
        bundle.putCharSequence("PreferenceDialogFragment.positiveText", this.f3687f);
        bundle.putCharSequence("PreferenceDialogFragment.negativeText", this.f3688g);
        bundle.putCharSequence("PreferenceDialogFragment.message", this.f3689h);
        bundle.putInt("PreferenceDialogFragment.layout", this.f3690i);
        BitmapDrawable bitmapDrawable = this.f3691j;
        if (bitmapDrawable != null) {
            bundle.putParcelable("PreferenceDialogFragment.icon", bitmapDrawable.getBitmap());
        }
    }
}
