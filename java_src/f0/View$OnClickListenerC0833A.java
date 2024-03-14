package f0;

import android.app.PendingIntent;
import android.content.Context;
import android.content.Intent;
import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.graphics.PorterDuff;
import android.graphics.drawable.Drawable;
import android.util.Log;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.Checkable;
import android.widget.CompoundButton;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.ProgressBar;
import android.widget.Switch;
import com.android.systemui.shared.R;
import com.google.android.apps.nexuslauncher.allapps.SearchResultIconSlice;
/* renamed from: f0.A  reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class View$OnClickListenerC0833A extends FrameLayout implements View.OnClickListener, CompoundButton.OnCheckedChangeListener {

    /* renamed from: m  reason: collision with root package name */
    public static final int[] f9038m = {16842912};

    /* renamed from: d  reason: collision with root package name */
    public androidx.slice.core.a f9039d;

    /* renamed from: e  reason: collision with root package name */
    public C0836c f9040e;

    /* renamed from: f  reason: collision with root package name */
    public M f9041f;

    /* renamed from: g  reason: collision with root package name */
    public E f9042g;

    /* renamed from: h  reason: collision with root package name */
    public View f9043h;

    /* renamed from: i  reason: collision with root package name */
    public ProgressBar f9044i;

    /* renamed from: j  reason: collision with root package name */
    public final int f9045j;

    /* renamed from: k  reason: collision with root package name */
    public final int f9046k;

    /* renamed from: l  reason: collision with root package name */
    public final int f9047l;

    public View$OnClickListenerC0833A(Context context, C0850q c0850q) {
        super(context);
        Resources resources = getContext().getResources();
        this.f9045j = resources.getDimensionPixelSize(R.dimen.abc_slice_icon_size);
        this.f9046k = resources.getDimensionPixelSize(R.dimen.abc_slice_small_image_size);
        this.f9047l = 0;
        if (c0850q != null) {
            this.f9045j = c0850q.f9236t;
            this.f9046k = c0850q.f9238v;
            this.f9047l = c0850q.f9235s;
        }
    }

    public final void a() {
        Intent intent;
        C0836c c0836c;
        androidx.slice.core.a aVar = this.f9039d;
        if (aVar == null || aVar.f4081a == null) {
            return;
        }
        try {
            if (aVar.b()) {
                boolean isChecked = ((Checkable) this.f9043h).isChecked();
                intent = new Intent().addFlags(268435456).putExtra("android.app.slice.extra.TOGGLE_STATE", isChecked);
                C0836c c0836c2 = this.f9040e;
                if (c0836c2 != null) {
                    c0836c2.f9156h = isChecked ? 1 : 0;
                }
            } else {
                intent = null;
            }
            if (this.f9039d.f4081a.a(getContext(), intent)) {
                c();
                E e4 = this.f9042g;
                if (e4 != null) {
                    C0836c c0836c3 = this.f9040e;
                    e4.c(this.f9039d.f4089i, c0836c3 != null ? c0836c3.f9152d : -1);
                }
            }
            M m4 = this.f9041f;
            if (m4 == null || (c0836c = this.f9040e) == null) {
                return;
            }
            ((SearchResultIconSlice) m4).k(this.f9039d.f4089i, c0836c);
        } catch (PendingIntent.CanceledException e5) {
            View view = this.f9043h;
            if (view instanceof Checkable) {
                view.setSelected(true ^ ((Checkable) view).isChecked());
            }
            Log.e("SliceActionView", "PendingIntent for slice cannot be sent", e5);
        }
    }

    public final void b(androidx.slice.core.a aVar, C0836c c0836c, M m4, int i4, E e4) {
        View view = this.f9043h;
        if (view != null) {
            removeView(view);
            this.f9043h = null;
        }
        View view2 = this.f9044i;
        if (view2 != null) {
            removeView(view2);
            this.f9044i = null;
        }
        this.f9039d = aVar;
        this.f9040e = c0836c;
        this.f9041f = m4;
        this.f9043h = null;
        this.f9042g = e4;
        boolean d4 = aVar.d();
        int i5 = 0;
        CharSequence charSequence = aVar.f4084d;
        boolean z4 = aVar.f4087g;
        if (d4) {
            Switch r6 = (Switch) LayoutInflater.from(getContext()).inflate(R.layout.abc_slice_switch, (ViewGroup) this, false);
            r6.setChecked(z4);
            r6.setOnCheckedChangeListener(this);
            r6.setMinimumHeight(this.f9046k);
            r6.setMinimumWidth(this.f9046k);
            addView(r6);
            if (i4 != -1) {
                int b4 = P.b(16842800, getContext());
                int[] iArr = f9038m;
                int[] iArr2 = FrameLayout.EMPTY_STATE_SET;
                ColorStateList colorStateList = new ColorStateList(new int[][]{iArr, iArr2}, new int[]{i4, b4});
                Drawable trackDrawable = r6.getTrackDrawable();
                trackDrawable.setTintList(colorStateList);
                r6.setTrackDrawable(trackDrawable);
                int b5 = P.b(R.attr.colorSwitchThumbNormal, getContext());
                if (b5 == 0) {
                    Context context = getContext();
                    Object obj = B.c.f105a;
                    b5 = context.getColor(R.color.switch_thumb_normal_material_light);
                }
                ColorStateList colorStateList2 = new ColorStateList(new int[][]{iArr, iArr2}, new int[]{i4, b5});
                Drawable thumbDrawable = r6.getThumbDrawable();
                thumbDrawable.setTintList(colorStateList2);
                r6.setThumbDrawable(thumbDrawable);
            }
            this.f9043h = r6;
        } else {
            int i6 = aVar.f4083c;
            if (i6 == 6) {
                Button button = new Button(getContext());
                this.f9043h = button;
                button.setText(charSequence);
                addView(this.f9043h);
                FrameLayout.LayoutParams layoutParams = (FrameLayout.LayoutParams) this.f9043h.getLayoutParams();
                layoutParams.width = -2;
                layoutParams.height = -2;
                this.f9043h.setLayoutParams(layoutParams);
                int i7 = this.f9047l;
                this.f9043h.setPadding(i7, i7, i7, i7);
                this.f9043h.setOnClickListener(this);
            } else if (aVar.f4082b != null) {
                if (aVar.b()) {
                    z zVar = new z(getContext());
                    zVar.setChecked(z4);
                    this.f9043h = zVar;
                } else {
                    this.f9043h = new ImageView(getContext());
                }
                addView(this.f9043h);
                Drawable h4 = this.f9039d.f4082b.h(getContext());
                ((ImageView) this.f9043h).setImageDrawable(h4);
                if (i4 != -1 && this.f9039d.f4083c == 0 && h4 != null) {
                    h4.setTint(i4);
                }
                FrameLayout.LayoutParams layoutParams2 = (FrameLayout.LayoutParams) this.f9043h.getLayoutParams();
                int i8 = this.f9046k;
                layoutParams2.width = i8;
                layoutParams2.height = i8;
                this.f9043h.setLayoutParams(layoutParams2);
                if (i6 == 0) {
                    int i9 = this.f9046k;
                    i5 = (i9 == -1 ? this.f9045j : i9 - this.f9045j) / 2;
                }
                this.f9043h.setPadding(i5, i5, i5, i5);
                this.f9043h.setBackground(P.c(16843868, getContext()));
                this.f9043h.setOnClickListener(this);
            }
        }
        View view3 = this.f9043h;
        if (view3 != null) {
            CharSequence charSequence2 = aVar.f4085e;
            if (charSequence2 != null) {
                charSequence = charSequence2;
            }
            view3.setContentDescription(charSequence);
        }
    }

    public final void c() {
        if (this.f9044i == null) {
            ProgressBar progressBar = (ProgressBar) LayoutInflater.from(getContext()).inflate(R.layout.abc_slice_progress_view, (ViewGroup) this, false);
            this.f9044i = progressBar;
            addView(progressBar);
        }
        Context context = getContext();
        ProgressBar progressBar2 = this.f9044i;
        int b4 = P.b(R.attr.colorControlHighlight, context);
        Drawable indeterminateDrawable = progressBar2.getIndeterminateDrawable();
        if (indeterminateDrawable != null && b4 != 0) {
            indeterminateDrawable.setColorFilter(b4, PorterDuff.Mode.MULTIPLY);
            progressBar2.setProgressDrawable(indeterminateDrawable);
        }
        this.f9043h.setVisibility(8);
        this.f9044i.setVisibility(0);
    }

    @Override // android.widget.CompoundButton.OnCheckedChangeListener
    public final void onCheckedChanged(CompoundButton compoundButton, boolean z4) {
        if (this.f9039d == null || this.f9043h == null) {
            return;
        }
        a();
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        if (this.f9039d == null || this.f9043h == null) {
            return;
        }
        a();
    }
}
