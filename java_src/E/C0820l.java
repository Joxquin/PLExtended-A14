package e;

import android.content.Context;
import android.content.DialogInterface;
import android.graphics.drawable.Drawable;
import android.view.ContextThemeWrapper;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.ListAdapter;
import android.widget.TextView;
import androidx.appcompat.app.AlertController$RecycleListView;
/* renamed from: e.l  reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0820l {

    /* renamed from: a  reason: collision with root package name */
    public final C0816h f8976a;

    /* renamed from: b  reason: collision with root package name */
    public final int f8977b;

    public C0820l(Context context) {
        this(DialogInterfaceC0821m.h(0, context), context);
    }

    public final DialogInterfaceC0821m a() {
        ListAdapter listAdapter;
        C0816h c0816h = this.f8976a;
        DialogInterfaceC0821m dialogInterfaceC0821m = new DialogInterfaceC0821m(this.f8977b, c0816h.f8914a);
        C0819k c0819k = dialogInterfaceC0821m.f8978i;
        View view = c0816h.f8918e;
        if (view != null) {
            c0819k.f8939C = view;
        } else {
            CharSequence charSequence = c0816h.f8917d;
            if (charSequence != null) {
                c0819k.f8954e = charSequence;
                TextView textView = c0819k.f8937A;
                if (textView != null) {
                    textView.setText(charSequence);
                }
            }
            Drawable drawable = c0816h.f8916c;
            if (drawable != null) {
                c0819k.f8974y = drawable;
                c0819k.f8973x = 0;
                ImageView imageView = c0819k.f8975z;
                if (imageView != null) {
                    imageView.setVisibility(0);
                    c0819k.f8975z.setImageDrawable(drawable);
                }
            }
        }
        CharSequence charSequence2 = c0816h.f8919f;
        if (charSequence2 != null) {
            c0819k.f8955f = charSequence2;
            TextView textView2 = c0819k.f8938B;
            if (textView2 != null) {
                textView2.setText(charSequence2);
            }
        }
        CharSequence charSequence3 = c0816h.f8920g;
        if (charSequence3 != null) {
            c0819k.d(-1, charSequence3, c0816h.f8921h);
        }
        CharSequence charSequence4 = c0816h.f8922i;
        if (charSequence4 != null) {
            c0819k.d(-2, charSequence4, c0816h.f8923j);
        }
        if (c0816h.f8926m != null || c0816h.f8927n != null) {
            AlertController$RecycleListView alertController$RecycleListView = (AlertController$RecycleListView) c0816h.f8915b.inflate(c0819k.f8943G, (ViewGroup) null);
            if (c0816h.f8932s) {
                listAdapter = new C0813e(c0816h, c0816h.f8914a, c0819k.f8944H, c0816h.f8926m, alertController$RecycleListView);
            } else {
                int i4 = c0816h.f8933t ? c0819k.f8945I : c0819k.f8946J;
                listAdapter = c0816h.f8927n;
                if (listAdapter == null) {
                    listAdapter = new C0818j(c0816h.f8914a, i4, c0816h.f8926m);
                }
            }
            c0819k.f8940D = listAdapter;
            c0819k.f8941E = c0816h.f8934u;
            if (c0816h.f8928o != null) {
                alertController$RecycleListView.setOnItemClickListener(new C0814f(c0816h, c0819k));
            } else if (c0816h.f8935v != null) {
                alertController$RecycleListView.setOnItemClickListener(new C0815g(c0816h, alertController$RecycleListView, c0819k));
            }
            if (c0816h.f8933t) {
                alertController$RecycleListView.setChoiceMode(1);
            } else if (c0816h.f8932s) {
                alertController$RecycleListView.setChoiceMode(2);
            }
            c0819k.f8956g = alertController$RecycleListView;
        }
        View view2 = c0816h.f8930q;
        if (view2 != null) {
            c0819k.f8957h = view2;
            c0819k.f8958i = 0;
            c0819k.f8959j = false;
        } else {
            int i5 = c0816h.f8929p;
            if (i5 != 0) {
                c0819k.f8957h = null;
                c0819k.f8958i = i5;
                c0819k.f8959j = false;
            }
        }
        dialogInterfaceC0821m.setCancelable(true);
        dialogInterfaceC0821m.setCanceledOnTouchOutside(true);
        dialogInterfaceC0821m.setOnCancelListener(null);
        dialogInterfaceC0821m.setOnDismissListener(c0816h.f8924k);
        DialogInterface.OnKeyListener onKeyListener = c0816h.f8925l;
        if (onKeyListener != null) {
            dialogInterfaceC0821m.setOnKeyListener(onKeyListener);
        }
        return dialogInterfaceC0821m;
    }

    public C0820l(int i4, Context context) {
        this.f8976a = new C0816h(new ContextThemeWrapper(context, DialogInterfaceC0821m.h(i4, context)));
        this.f8977b = i4;
    }
}
