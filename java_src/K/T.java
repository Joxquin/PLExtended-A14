package k;

import android.content.DialogInterface;
import android.graphics.drawable.Drawable;
import android.util.Log;
import android.widget.ListAdapter;
import androidx.appcompat.app.AlertController$RecycleListView;
import e.C0816h;
import e.C0820l;
import e.DialogInterfaceC0821m;
/* loaded from: classes.dex */
public final class T implements InterfaceC1126a0, DialogInterface.OnClickListener {

    /* renamed from: d  reason: collision with root package name */
    public DialogInterfaceC0821m f10827d;

    /* renamed from: e  reason: collision with root package name */
    public ListAdapter f10828e;

    /* renamed from: f  reason: collision with root package name */
    public CharSequence f10829f;

    /* renamed from: g  reason: collision with root package name */
    public final /* synthetic */ C1128b0 f10830g;

    public T(C1128b0 c1128b0) {
        this.f10830g = c1128b0;
    }

    @Override // k.InterfaceC1126a0
    public final int a() {
        return 0;
    }

    @Override // k.InterfaceC1126a0
    public final boolean b() {
        DialogInterfaceC0821m dialogInterfaceC0821m = this.f10827d;
        if (dialogInterfaceC0821m != null) {
            return dialogInterfaceC0821m.isShowing();
        }
        return false;
    }

    @Override // k.InterfaceC1126a0
    public final Drawable d() {
        return null;
    }

    @Override // k.InterfaceC1126a0
    public final void dismiss() {
        DialogInterfaceC0821m dialogInterfaceC0821m = this.f10827d;
        if (dialogInterfaceC0821m != null) {
            dialogInterfaceC0821m.dismiss();
            this.f10827d = null;
        }
    }

    @Override // k.InterfaceC1126a0
    public final void f(CharSequence charSequence) {
        this.f10829f = charSequence;
    }

    @Override // k.InterfaceC1126a0
    public final void g(Drawable drawable) {
        Log.e("AppCompatSpinner", "Cannot set popup background for MODE_DIALOG, ignoring");
    }

    @Override // k.InterfaceC1126a0
    public final void h(int i4) {
        Log.e("AppCompatSpinner", "Cannot set vertical offset for MODE_DIALOG, ignoring");
    }

    @Override // k.InterfaceC1126a0
    public final void i(int i4) {
        Log.e("AppCompatSpinner", "Cannot set horizontal (original) offset for MODE_DIALOG, ignoring");
    }

    @Override // k.InterfaceC1126a0
    public final void k(int i4) {
        Log.e("AppCompatSpinner", "Cannot set horizontal offset for MODE_DIALOG, ignoring");
    }

    @Override // k.InterfaceC1126a0
    public final void l(int i4, int i5) {
        if (this.f10828e == null) {
            return;
        }
        C0820l c0820l = new C0820l(this.f10830g.f10866e);
        CharSequence charSequence = this.f10829f;
        C0816h c0816h = c0820l.f8976a;
        if (charSequence != null) {
            c0816h.f8917d = charSequence;
        }
        ListAdapter listAdapter = this.f10828e;
        int selectedItemPosition = this.f10830g.getSelectedItemPosition();
        c0816h.f8927n = listAdapter;
        c0816h.f8928o = this;
        c0816h.f8934u = selectedItemPosition;
        c0816h.f8933t = true;
        DialogInterfaceC0821m a4 = c0820l.a();
        this.f10827d = a4;
        AlertController$RecycleListView alertController$RecycleListView = a4.f8978i.f8956g;
        alertController$RecycleListView.setTextDirection(i4);
        alertController$RecycleListView.setTextAlignment(i5);
        this.f10827d.show();
    }

    @Override // k.InterfaceC1126a0
    public final int m() {
        return 0;
    }

    @Override // k.InterfaceC1126a0
    public final CharSequence n() {
        return this.f10829f;
    }

    @Override // k.InterfaceC1126a0
    public final void o(ListAdapter listAdapter) {
        this.f10828e = listAdapter;
    }

    @Override // android.content.DialogInterface.OnClickListener
    public final void onClick(DialogInterface dialogInterface, int i4) {
        this.f10830g.setSelection(i4);
        if (this.f10830g.getOnItemClickListener() != null) {
            this.f10830g.performItemClick(null, i4, this.f10828e.getItemId(i4));
        }
        dismiss();
    }
}
