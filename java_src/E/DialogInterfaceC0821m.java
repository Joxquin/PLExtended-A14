package e;

import android.content.Context;
import android.content.DialogInterface;
import android.graphics.drawable.Drawable;
import android.os.Bundle;
import android.text.TextUtils;
import android.util.TypedValue;
import android.view.KeyEvent;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import android.widget.Button;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.ListAdapter;
import android.widget.TextView;
import androidx.appcompat.app.AlertController$RecycleListView;
import androidx.core.widget.NestedScrollView;
import com.android.systemui.shared.R;
import java.util.WeakHashMap;
import k.C1167v0;
/* renamed from: e.m  reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class DialogInterfaceC0821m extends DialogC0805F implements DialogInterface {

    /* renamed from: i  reason: collision with root package name */
    public final C0819k f8978i;

    public DialogInterfaceC0821m(int i4, Context context) {
        super(h(i4, context), context);
        this.f8978i = new C0819k(getContext(), this, getWindow());
    }

    public static int h(int i4, Context context) {
        if (((i4 >>> 24) & 255) >= 1) {
            return i4;
        }
        TypedValue typedValue = new TypedValue();
        context.getTheme().resolveAttribute(R.attr.alertDialogTheme, typedValue, true);
        return typedValue.resourceId;
    }

    @Override // e.DialogC0805F, androidx.activity.n, android.app.Dialog
    public final void onCreate(Bundle bundle) {
        boolean z4;
        View view;
        ListAdapter listAdapter;
        View findViewById;
        super.onCreate(bundle);
        C0819k c0819k = this.f8978i;
        c0819k.f8951b.setContentView(c0819k.f8942F);
        Window window = c0819k.f8952c;
        View findViewById2 = window.findViewById(R.id.parentPanel);
        View findViewById3 = findViewById2.findViewById(R.id.topPanel);
        View findViewById4 = findViewById2.findViewById(R.id.contentPanel);
        View findViewById5 = findViewById2.findViewById(R.id.buttonPanel);
        ViewGroup viewGroup = (ViewGroup) findViewById2.findViewById(R.id.customPanel);
        View view2 = c0819k.f8957h;
        Context context = c0819k.f8950a;
        if (view2 == null) {
            view2 = c0819k.f8958i != 0 ? LayoutInflater.from(context).inflate(c0819k.f8958i, viewGroup, false) : null;
        }
        boolean z5 = view2 != null;
        if (!z5 || !C0819k.a(view2)) {
            window.setFlags(131072, 131072);
        }
        if (z5) {
            FrameLayout frameLayout = (FrameLayout) window.findViewById(R.id.custom);
            frameLayout.addView(view2, new ViewGroup.LayoutParams(-1, -1));
            if (c0819k.f8959j) {
                frameLayout.setPadding(0, 0, 0, 0);
            }
            if (c0819k.f8956g != null) {
                ((LinearLayout.LayoutParams) ((C1167v0) viewGroup.getLayoutParams())).weight = 0.0f;
            }
        } else {
            viewGroup.setVisibility(8);
        }
        View findViewById6 = viewGroup.findViewById(R.id.topPanel);
        View findViewById7 = viewGroup.findViewById(R.id.contentPanel);
        View findViewById8 = viewGroup.findViewById(R.id.buttonPanel);
        ViewGroup c4 = C0819k.c(findViewById6, findViewById3);
        ViewGroup c5 = C0819k.c(findViewById7, findViewById4);
        ViewGroup c6 = C0819k.c(findViewById8, findViewById5);
        NestedScrollView nestedScrollView = (NestedScrollView) window.findViewById(R.id.scrollView);
        c0819k.f8972w = nestedScrollView;
        nestedScrollView.setFocusable(false);
        c0819k.f8972w.setNestedScrollingEnabled(false);
        TextView textView = (TextView) c5.findViewById(16908299);
        c0819k.f8938B = textView;
        if (textView != null) {
            CharSequence charSequence = c0819k.f8955f;
            if (charSequence != null) {
                textView.setText(charSequence);
            } else {
                textView.setVisibility(8);
                c0819k.f8972w.removeView(c0819k.f8938B);
                if (c0819k.f8956g != null) {
                    ViewGroup viewGroup2 = (ViewGroup) c0819k.f8972w.getParent();
                    int indexOfChild = viewGroup2.indexOfChild(c0819k.f8972w);
                    viewGroup2.removeViewAt(indexOfChild);
                    viewGroup2.addView(c0819k.f8956g, indexOfChild, new ViewGroup.LayoutParams(-1, -1));
                } else {
                    c5.setVisibility(8);
                }
            }
        }
        Button button = (Button) c6.findViewById(16908313);
        c0819k.f8960k = button;
        View$OnClickListenerC0812d view$OnClickListenerC0812d = c0819k.f8949M;
        button.setOnClickListener(view$OnClickListenerC0812d);
        boolean isEmpty = TextUtils.isEmpty(c0819k.f8961l);
        int i4 = c0819k.f8953d;
        if (isEmpty && c0819k.f8963n == null) {
            c0819k.f8960k.setVisibility(8);
            z4 = false;
        } else {
            c0819k.f8960k.setText(c0819k.f8961l);
            Drawable drawable = c0819k.f8963n;
            if (drawable != null) {
                drawable.setBounds(0, 0, i4, i4);
                c0819k.f8960k.setCompoundDrawables(c0819k.f8963n, null, null, null);
            }
            c0819k.f8960k.setVisibility(0);
            z4 = true;
        }
        Button button2 = (Button) c6.findViewById(16908314);
        c0819k.f8964o = button2;
        button2.setOnClickListener(view$OnClickListenerC0812d);
        if (TextUtils.isEmpty(c0819k.f8965p) && c0819k.f8967r == null) {
            c0819k.f8964o.setVisibility(8);
        } else {
            c0819k.f8964o.setText(c0819k.f8965p);
            Drawable drawable2 = c0819k.f8967r;
            if (drawable2 != null) {
                drawable2.setBounds(0, 0, i4, i4);
                c0819k.f8964o.setCompoundDrawables(c0819k.f8967r, null, null, null);
            }
            c0819k.f8964o.setVisibility(0);
            z4 |= true;
        }
        Button button3 = (Button) c6.findViewById(16908315);
        c0819k.f8968s = button3;
        button3.setOnClickListener(view$OnClickListenerC0812d);
        if (TextUtils.isEmpty(c0819k.f8969t) && c0819k.f8971v == null) {
            c0819k.f8968s.setVisibility(8);
            view = null;
        } else {
            c0819k.f8968s.setText(c0819k.f8969t);
            Drawable drawable3 = c0819k.f8971v;
            if (drawable3 != null) {
                drawable3.setBounds(0, 0, i4, i4);
                view = null;
                c0819k.f8968s.setCompoundDrawables(c0819k.f8971v, null, null, null);
            } else {
                view = null;
            }
            c0819k.f8968s.setVisibility(0);
            z4 |= true;
        }
        TypedValue typedValue = new TypedValue();
        context.getTheme().resolveAttribute(R.attr.alertDialogCenterButtons, typedValue, true);
        if (typedValue.data != 0) {
            if (z4) {
                C0819k.b(c0819k.f8960k);
            } else if (z4) {
                C0819k.b(c0819k.f8964o);
            } else if (z4) {
                C0819k.b(c0819k.f8968s);
            }
        }
        if (!(z4)) {
            c6.setVisibility(8);
        }
        if (c0819k.f8939C != null) {
            c4.addView(c0819k.f8939C, 0, new ViewGroup.LayoutParams(-1, -2));
            window.findViewById(R.id.title_template).setVisibility(8);
        } else {
            c0819k.f8975z = (ImageView) window.findViewById(16908294);
            if ((!TextUtils.isEmpty(c0819k.f8954e)) && c0819k.f8947K) {
                TextView textView2 = (TextView) window.findViewById(R.id.alertTitle);
                c0819k.f8937A = textView2;
                textView2.setText(c0819k.f8954e);
                int i5 = c0819k.f8973x;
                if (i5 != 0) {
                    c0819k.f8975z.setImageResource(i5);
                } else {
                    Drawable drawable4 = c0819k.f8974y;
                    if (drawable4 != null) {
                        c0819k.f8975z.setImageDrawable(drawable4);
                    } else {
                        c0819k.f8937A.setPadding(c0819k.f8975z.getPaddingLeft(), c0819k.f8975z.getPaddingTop(), c0819k.f8975z.getPaddingRight(), c0819k.f8975z.getPaddingBottom());
                        c0819k.f8975z.setVisibility(8);
                    }
                }
            } else {
                window.findViewById(R.id.title_template).setVisibility(8);
                c0819k.f8975z.setVisibility(8);
                c4.setVisibility(8);
            }
        }
        boolean z6 = viewGroup.getVisibility() != 8;
        int i6 = (c4 == null || c4.getVisibility() == 8) ? 0 : 1;
        boolean z7 = c6.getVisibility() != 8;
        if (!z7 && (findViewById = c5.findViewById(R.id.textSpacerNoButtons)) != null) {
            findViewById.setVisibility(0);
        }
        if (i6 != 0) {
            NestedScrollView nestedScrollView2 = c0819k.f8972w;
            if (nestedScrollView2 != null) {
                nestedScrollView2.setClipToPadding(true);
            }
            View findViewById9 = (c0819k.f8955f == null && c0819k.f8956g == null) ? view : c4.findViewById(R.id.titleDividerNoCustom);
            if (findViewById9 != null) {
                findViewById9.setVisibility(0);
            }
        } else {
            View findViewById10 = c5.findViewById(R.id.textSpacerNoTitle);
            if (findViewById10 != null) {
                findViewById10.setVisibility(0);
            }
        }
        AlertController$RecycleListView alertController$RecycleListView = c0819k.f8956g;
        if (alertController$RecycleListView instanceof AlertController$RecycleListView) {
            alertController$RecycleListView.getClass();
            if (!z7 || i6 == 0) {
                alertController$RecycleListView.setPadding(alertController$RecycleListView.getPaddingLeft(), i6 != 0 ? alertController$RecycleListView.getPaddingTop() : alertController$RecycleListView.f2484d, alertController$RecycleListView.getPaddingRight(), z7 ? alertController$RecycleListView.getPaddingBottom() : alertController$RecycleListView.f2485e);
            }
        }
        if (!z6) {
            View view3 = c0819k.f8956g;
            if (view3 == null) {
                view3 = c0819k.f8972w;
            }
            if (view3 != null) {
                int i7 = z7 ? 2 : 0;
                View findViewById11 = window.findViewById(R.id.scrollIndicatorUp);
                View findViewById12 = window.findViewById(R.id.scrollIndicatorDown);
                WeakHashMap weakHashMap = androidx.core.view.J.f3079a;
                androidx.core.view.E.b(view3, i6 | i7, 3);
                if (findViewById11 != null) {
                    c5.removeView(findViewById11);
                }
                if (findViewById12 != null) {
                    c5.removeView(findViewById12);
                }
            }
        }
        AlertController$RecycleListView alertController$RecycleListView2 = c0819k.f8956g;
        if (alertController$RecycleListView2 == null || (listAdapter = c0819k.f8940D) == null) {
            return;
        }
        alertController$RecycleListView2.setAdapter(listAdapter);
        int i8 = c0819k.f8941E;
        if (i8 > -1) {
            alertController$RecycleListView2.setItemChecked(i8, true);
            alertController$RecycleListView2.setSelection(i8);
        }
    }

    @Override // android.app.Dialog, android.view.KeyEvent.Callback
    public final boolean onKeyDown(int i4, KeyEvent keyEvent) {
        NestedScrollView nestedScrollView = this.f8978i.f8972w;
        if (nestedScrollView != null && nestedScrollView.d(keyEvent)) {
            return true;
        }
        return super.onKeyDown(i4, keyEvent);
    }

    @Override // android.app.Dialog, android.view.KeyEvent.Callback
    public final boolean onKeyUp(int i4, KeyEvent keyEvent) {
        NestedScrollView nestedScrollView = this.f8978i.f8972w;
        if (nestedScrollView != null && nestedScrollView.d(keyEvent)) {
            return true;
        }
        return super.onKeyUp(i4, keyEvent);
    }

    @Override // e.DialogC0805F, android.app.Dialog
    public final void setTitle(CharSequence charSequence) {
        super.setTitle(charSequence);
        C0819k c0819k = this.f8978i;
        c0819k.f8954e = charSequence;
        TextView textView = c0819k.f8937A;
        if (textView != null) {
            textView.setText(charSequence);
        }
    }
}
