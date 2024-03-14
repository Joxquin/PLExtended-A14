package e;

import android.content.Context;
import android.content.DialogInterface;
import android.content.res.TypedArray;
import android.graphics.drawable.Drawable;
import android.os.Message;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.view.ViewStub;
import android.view.Window;
import android.widget.Button;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.ListAdapter;
import android.widget.TextView;
import androidx.appcompat.app.AlertController$RecycleListView;
import androidx.core.widget.NestedScrollView;
import com.android.systemui.shared.R;
import d.C0792a;
/* renamed from: e.k  reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0819k {

    /* renamed from: A  reason: collision with root package name */
    public TextView f8937A;

    /* renamed from: B  reason: collision with root package name */
    public TextView f8938B;

    /* renamed from: C  reason: collision with root package name */
    public View f8939C;

    /* renamed from: D  reason: collision with root package name */
    public ListAdapter f8940D;

    /* renamed from: F  reason: collision with root package name */
    public final int f8942F;

    /* renamed from: G  reason: collision with root package name */
    public final int f8943G;

    /* renamed from: H  reason: collision with root package name */
    public final int f8944H;

    /* renamed from: I  reason: collision with root package name */
    public final int f8945I;

    /* renamed from: J  reason: collision with root package name */
    public final int f8946J;

    /* renamed from: K  reason: collision with root package name */
    public final boolean f8947K;

    /* renamed from: L  reason: collision with root package name */
    public final HandlerC0817i f8948L;

    /* renamed from: a  reason: collision with root package name */
    public final Context f8950a;

    /* renamed from: b  reason: collision with root package name */
    public final DialogC0805F f8951b;

    /* renamed from: c  reason: collision with root package name */
    public final Window f8952c;

    /* renamed from: d  reason: collision with root package name */
    public final int f8953d;

    /* renamed from: e  reason: collision with root package name */
    public CharSequence f8954e;

    /* renamed from: f  reason: collision with root package name */
    public CharSequence f8955f;

    /* renamed from: g  reason: collision with root package name */
    public AlertController$RecycleListView f8956g;

    /* renamed from: h  reason: collision with root package name */
    public View f8957h;

    /* renamed from: i  reason: collision with root package name */
    public int f8958i;

    /* renamed from: k  reason: collision with root package name */
    public Button f8960k;

    /* renamed from: l  reason: collision with root package name */
    public CharSequence f8961l;

    /* renamed from: m  reason: collision with root package name */
    public Message f8962m;

    /* renamed from: n  reason: collision with root package name */
    public Drawable f8963n;

    /* renamed from: o  reason: collision with root package name */
    public Button f8964o;

    /* renamed from: p  reason: collision with root package name */
    public CharSequence f8965p;

    /* renamed from: q  reason: collision with root package name */
    public Message f8966q;

    /* renamed from: r  reason: collision with root package name */
    public Drawable f8967r;

    /* renamed from: s  reason: collision with root package name */
    public Button f8968s;

    /* renamed from: t  reason: collision with root package name */
    public CharSequence f8969t;

    /* renamed from: u  reason: collision with root package name */
    public Message f8970u;

    /* renamed from: v  reason: collision with root package name */
    public Drawable f8971v;

    /* renamed from: w  reason: collision with root package name */
    public NestedScrollView f8972w;

    /* renamed from: y  reason: collision with root package name */
    public Drawable f8974y;

    /* renamed from: z  reason: collision with root package name */
    public ImageView f8975z;

    /* renamed from: j  reason: collision with root package name */
    public boolean f8959j = false;

    /* renamed from: x  reason: collision with root package name */
    public int f8973x = 0;

    /* renamed from: E  reason: collision with root package name */
    public int f8941E = -1;

    /* renamed from: M  reason: collision with root package name */
    public final View$OnClickListenerC0812d f8949M = new View$OnClickListenerC0812d(this);

    public C0819k(Context context, DialogC0805F dialogC0805F, Window window) {
        this.f8950a = context;
        this.f8951b = dialogC0805F;
        this.f8952c = window;
        this.f8948L = new HandlerC0817i(dialogC0805F);
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(null, C0792a.f8735e, R.attr.alertDialogStyle, 0);
        this.f8942F = obtainStyledAttributes.getResourceId(0, 0);
        obtainStyledAttributes.getResourceId(2, 0);
        this.f8943G = obtainStyledAttributes.getResourceId(4, 0);
        this.f8944H = obtainStyledAttributes.getResourceId(5, 0);
        this.f8945I = obtainStyledAttributes.getResourceId(7, 0);
        this.f8946J = obtainStyledAttributes.getResourceId(3, 0);
        this.f8947K = obtainStyledAttributes.getBoolean(6, true);
        this.f8953d = obtainStyledAttributes.getDimensionPixelSize(1, 0);
        obtainStyledAttributes.recycle();
        dialogC0805F.f().s(1);
    }

    public static boolean a(View view) {
        if (view.onCheckIsTextEditor()) {
            return true;
        }
        if (view instanceof ViewGroup) {
            ViewGroup viewGroup = (ViewGroup) view;
            int childCount = viewGroup.getChildCount();
            while (childCount > 0) {
                childCount--;
                if (a(viewGroup.getChildAt(childCount))) {
                    return true;
                }
            }
            return false;
        }
        return false;
    }

    public static void b(Button button) {
        LinearLayout.LayoutParams layoutParams = (LinearLayout.LayoutParams) button.getLayoutParams();
        layoutParams.gravity = 1;
        layoutParams.weight = 0.5f;
        button.setLayoutParams(layoutParams);
    }

    public static ViewGroup c(View view, View view2) {
        if (view == null) {
            if (view2 instanceof ViewStub) {
                view2 = ((ViewStub) view2).inflate();
            }
            return (ViewGroup) view2;
        }
        if (view2 != null) {
            ViewParent parent = view2.getParent();
            if (parent instanceof ViewGroup) {
                ((ViewGroup) parent).removeView(view2);
            }
        }
        if (view instanceof ViewStub) {
            view = ((ViewStub) view).inflate();
        }
        return (ViewGroup) view;
    }

    public final void d(int i4, CharSequence charSequence, DialogInterface.OnClickListener onClickListener) {
        Message obtainMessage = onClickListener != null ? this.f8948L.obtainMessage(i4, onClickListener) : null;
        if (i4 == -3) {
            this.f8969t = charSequence;
            this.f8970u = obtainMessage;
            this.f8971v = null;
        } else if (i4 == -2) {
            this.f8965p = charSequence;
            this.f8966q = obtainMessage;
            this.f8967r = null;
        } else if (i4 != -1) {
            throw new IllegalArgumentException("Button does not exist");
        } else {
            this.f8961l = charSequence;
            this.f8962m = obtainMessage;
            this.f8963n = null;
        }
    }
}
