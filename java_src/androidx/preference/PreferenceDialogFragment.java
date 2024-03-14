package androidx.preference;

import X.InterfaceC0079b;
import android.app.Activity;
import android.app.AlertDialog;
import android.app.Dialog;
import android.app.DialogFragment;
import android.app.Fragment;
import android.content.DialogInterface;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import android.os.Bundle;
import android.text.TextUtils;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.WindowInsets;
import android.widget.TextView;
@Deprecated
/* loaded from: classes.dex */
public abstract class PreferenceDialogFragment extends DialogFragment implements DialogInterface.OnClickListener {

    /* renamed from: d  reason: collision with root package name */
    public DialogPreference f3677d;

    /* renamed from: e  reason: collision with root package name */
    public CharSequence f3678e;

    /* renamed from: f  reason: collision with root package name */
    public CharSequence f3679f;

    /* renamed from: g  reason: collision with root package name */
    public CharSequence f3680g;

    /* renamed from: h  reason: collision with root package name */
    public CharSequence f3681h;

    /* renamed from: i  reason: collision with root package name */
    public int f3682i;

    /* renamed from: j  reason: collision with root package name */
    public BitmapDrawable f3683j;

    /* renamed from: k  reason: collision with root package name */
    public int f3684k;

    @Deprecated
    public final DialogPreference a() {
        if (this.f3677d == null) {
            this.f3677d = (DialogPreference) ((InterfaceC0079b) getTargetFragment()).findPreference(getArguments().getString("key"));
        }
        return this.f3677d;
    }

    @Deprecated
    public void b(View view) {
        int i4;
        View findViewById = view.findViewById(16908299);
        if (findViewById != null) {
            CharSequence charSequence = this.f3681h;
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

    @Deprecated
    public abstract void c(boolean z4);

    @Deprecated
    public void d(AlertDialog.Builder builder) {
    }

    @Override // android.content.DialogInterface.OnClickListener
    @Deprecated
    public final void onClick(DialogInterface dialogInterface, int i4) {
        this.f3684k = i4;
    }

    @Override // android.app.DialogFragment, android.app.Fragment
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        Fragment targetFragment = getTargetFragment();
        if (!(targetFragment instanceof InterfaceC0079b)) {
            throw new IllegalStateException("Target fragment must implement TargetFragment interface");
        }
        InterfaceC0079b interfaceC0079b = (InterfaceC0079b) targetFragment;
        String string = getArguments().getString("key");
        if (bundle != null) {
            this.f3678e = bundle.getCharSequence("PreferenceDialogFragment.title");
            this.f3679f = bundle.getCharSequence("PreferenceDialogFragment.positiveText");
            this.f3680g = bundle.getCharSequence("PreferenceDialogFragment.negativeText");
            this.f3681h = bundle.getCharSequence("PreferenceDialogFragment.message");
            this.f3682i = bundle.getInt("PreferenceDialogFragment.layout", 0);
            Bitmap bitmap = (Bitmap) bundle.getParcelable("PreferenceDialogFragment.icon");
            if (bitmap != null) {
                this.f3683j = new BitmapDrawable(getResources(), bitmap);
                return;
            }
            return;
        }
        DialogPreference dialogPreference = (DialogPreference) interfaceC0079b.findPreference(string);
        this.f3677d = dialogPreference;
        this.f3678e = dialogPreference.f3639d;
        this.f3679f = dialogPreference.f3642g;
        this.f3680g = dialogPreference.f3643h;
        this.f3681h = dialogPreference.f3640e;
        this.f3682i = dialogPreference.f3644i;
        Drawable drawable = dialogPreference.f3641f;
        if (drawable == null || (drawable instanceof BitmapDrawable)) {
            this.f3683j = (BitmapDrawable) drawable;
            return;
        }
        Bitmap createBitmap = Bitmap.createBitmap(drawable.getIntrinsicWidth(), drawable.getIntrinsicHeight(), Bitmap.Config.ARGB_8888);
        Canvas canvas = new Canvas(createBitmap);
        drawable.setBounds(0, 0, canvas.getWidth(), canvas.getHeight());
        drawable.draw(canvas);
        this.f3683j = new BitmapDrawable(getResources(), createBitmap);
    }

    @Override // android.app.DialogFragment
    public final Dialog onCreateDialog(Bundle bundle) {
        Activity activity = getActivity();
        this.f3684k = -2;
        AlertDialog.Builder negativeButton = new AlertDialog.Builder(activity).setTitle(this.f3678e).setIcon(this.f3683j).setPositiveButton(this.f3679f, this).setNegativeButton(this.f3680g, this);
        int i4 = this.f3682i;
        View inflate = i4 != 0 ? LayoutInflater.from(activity).inflate(i4, (ViewGroup) null) : null;
        if (inflate != null) {
            b(inflate);
            negativeButton.setView(inflate);
        } else {
            negativeButton.setMessage(this.f3681h);
        }
        d(negativeButton);
        AlertDialog create = negativeButton.create();
        if (this instanceof EditTextPreferenceDialogFragment) {
            create.getWindow().getDecorView().getWindowInsetsController().show(WindowInsets.Type.ime());
        }
        return create;
    }

    @Override // android.app.DialogFragment, android.content.DialogInterface.OnDismissListener
    public final void onDismiss(DialogInterface dialogInterface) {
        super.onDismiss(dialogInterface);
        c(this.f3684k == -1);
    }

    @Override // android.app.DialogFragment, android.app.Fragment
    public void onSaveInstanceState(Bundle bundle) {
        super.onSaveInstanceState(bundle);
        bundle.putCharSequence("PreferenceDialogFragment.title", this.f3678e);
        bundle.putCharSequence("PreferenceDialogFragment.positiveText", this.f3679f);
        bundle.putCharSequence("PreferenceDialogFragment.negativeText", this.f3680g);
        bundle.putCharSequence("PreferenceDialogFragment.message", this.f3681h);
        bundle.putInt("PreferenceDialogFragment.layout", this.f3682i);
        BitmapDrawable bitmapDrawable = this.f3683j;
        if (bitmapDrawable != null) {
            bundle.putParcelable("PreferenceDialogFragment.icon", bitmapDrawable.getBitmap());
        }
    }
}
