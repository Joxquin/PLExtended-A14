package androidx.slice.compat;

import K.b;
import android.content.DialogInterface;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageManager;
import android.net.Uri;
import android.os.Bundle;
import android.os.RemoteException;
import android.text.Html;
import android.text.TextPaint;
import android.text.TextUtils;
import android.util.Log;
import android.widget.TextView;
import androidx.appcompat.app.a;
import c0.C0322b;
import c0.C0323c;
import com.android.systemui.shared.R;
import e.C0816h;
import e.C0820l;
import e.DialogInterfaceC0821m;
/* loaded from: classes.dex */
public class SlicePermissionActivity extends a implements DialogInterface.OnClickListener, DialogInterface.OnDismissListener {

    /* renamed from: e  reason: collision with root package name */
    public Uri f4073e;

    /* renamed from: f  reason: collision with root package name */
    public String f4074f;

    /* renamed from: g  reason: collision with root package name */
    public DialogInterfaceC0821m f4075g;

    public static CharSequence l(PackageManager packageManager, ApplicationInfo applicationInfo) {
        String obj = Html.fromHtml(applicationInfo.loadLabel(packageManager).toString()).toString();
        int length = obj.length();
        int i4 = 0;
        while (i4 < length) {
            int codePointAt = obj.codePointAt(i4);
            int type = Character.getType(codePointAt);
            if (type == 13 || type == 15 || type == 14) {
                obj = obj.substring(0, i4);
                break;
            }
            if (type == 12) {
                obj = obj.substring(0, i4) + " " + obj.substring(Character.charCount(codePointAt) + i4);
            }
            i4 += Character.charCount(codePointAt);
        }
        String trim = obj.trim();
        if (trim.isEmpty()) {
            return applicationInfo.packageName;
        }
        TextPaint textPaint = new TextPaint();
        textPaint.setTextSize(42.0f);
        return TextUtils.ellipsize(trim, textPaint, 500.0f, TextUtils.TruncateAt.END);
    }

    @Override // android.content.DialogInterface.OnClickListener
    public final void onClick(DialogInterface dialogInterface, int i4) {
        if (i4 == -1) {
            String packageName = getPackageName();
            String str = this.f4074f;
            Uri build = this.f4073e.buildUpon().path("").build();
            try {
                C0322b a4 = C0323c.a(getContentResolver(), build);
                Bundle bundle = new Bundle();
                bundle.putParcelable("slice_uri", build);
                bundle.putString("provider_pkg", packageName);
                bundle.putString("pkg", str);
                a4.f4253d.call("grant_perms", "supports_versioned_parcelable", bundle);
                a4.close();
            } catch (RemoteException e4) {
                Log.e("SliceProviderCompat", "Unable to get slice descendants", e4);
            }
        }
        finish();
    }

    @Override // androidx.fragment.app.P, androidx.activity.l, B.e, android.app.Activity
    public final void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        this.f4073e = (Uri) getIntent().getParcelableExtra("slice_uri");
        this.f4074f = getIntent().getStringExtra("pkg");
        String stringExtra = getIntent().getStringExtra("provider_pkg");
        try {
            PackageManager packageManager = getPackageManager();
            String d4 = b.c().d(l(packageManager, packageManager.getApplicationInfo(this.f4074f, 0)).toString());
            String d5 = b.c().d(l(packageManager, packageManager.getApplicationInfo(stringExtra, 0)).toString());
            C0820l c0820l = new C0820l(this);
            C0816h c0816h = c0820l.f8976a;
            c0816h.f8917d = getString(R.string.abc_slice_permission_title, new Object[]{d4, d5});
            c0816h.f8930q = null;
            c0816h.f8929p = R.layout.abc_slice_permission_request;
            c0816h.f8922i = c0816h.f8914a.getText(R.string.abc_slice_permission_deny);
            c0816h.f8923j = this;
            c0816h.f8920g = c0816h.f8914a.getText(R.string.abc_slice_permission_allow);
            c0816h.f8921h = this;
            c0816h.f8924k = this;
            DialogInterfaceC0821m a4 = c0820l.a();
            a4.show();
            this.f4075g = a4;
            ((TextView) a4.getWindow().getDecorView().findViewById(R.id.text1)).setText(getString(R.string.abc_slice_permission_text_1, new Object[]{d5}));
            ((TextView) this.f4075g.getWindow().getDecorView().findViewById(R.id.text2)).setText(getString(R.string.abc_slice_permission_text_2, new Object[]{d5}));
        } catch (PackageManager.NameNotFoundException e4) {
            Log.e("SlicePermissionActivity", "Couldn't find package", e4);
            finish();
        }
    }

    @Override // androidx.appcompat.app.a, androidx.fragment.app.P, android.app.Activity
    public final void onDestroy() {
        super.onDestroy();
        DialogInterfaceC0821m dialogInterfaceC0821m = this.f4075g;
        if (dialogInterfaceC0821m == null || !dialogInterfaceC0821m.isShowing()) {
            return;
        }
        this.f4075g.cancel();
    }
}
