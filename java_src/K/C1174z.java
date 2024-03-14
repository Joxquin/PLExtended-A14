package k;

import android.content.Context;
import android.content.res.ColorStateList;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.PorterDuff;
import android.graphics.Rect;
import android.graphics.Shader;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.LayerDrawable;
import com.android.systemui.shared.R;
/* renamed from: k.z  reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C1174z {

    /* renamed from: a  reason: collision with root package name */
    public final int[] f11033a = {R.drawable.abc_textfield_search_default_mtrl_alpha, R.drawable.abc_textfield_default_mtrl_alpha, R.drawable.abc_ab_share_pack_mtrl_alpha};

    /* renamed from: b  reason: collision with root package name */
    public final int[] f11034b = {R.drawable.abc_ic_commit_search_api_mtrl_alpha, R.drawable.abc_seekbar_tick_mark_material, R.drawable.abc_ic_menu_share_mtrl_alpha, R.drawable.abc_ic_menu_copy_mtrl_am_alpha, R.drawable.abc_ic_menu_cut_mtrl_alpha, R.drawable.abc_ic_menu_selectall_mtrl_alpha, R.drawable.abc_ic_menu_paste_mtrl_am_alpha};

    /* renamed from: c  reason: collision with root package name */
    public final int[] f11035c = {R.drawable.abc_textfield_activated_mtrl_alpha, R.drawable.abc_textfield_search_activated_mtrl_alpha, R.drawable.abc_cab_background_top_mtrl_alpha, R.drawable.abc_text_cursor_material, R.drawable.abc_text_select_handle_left_mtrl, R.drawable.abc_text_select_handle_middle_mtrl, R.drawable.abc_text_select_handle_right_mtrl};

    /* renamed from: d  reason: collision with root package name */
    public final int[] f11036d = {R.drawable.abc_popup_background_mtrl_mult, R.drawable.abc_cab_background_internal_bg, R.drawable.abc_menu_hardkey_panel_mtrl_mult};

    /* renamed from: e  reason: collision with root package name */
    public final int[] f11037e = {R.drawable.abc_tab_indicator_material, R.drawable.abc_textfield_search_material};

    /* renamed from: f  reason: collision with root package name */
    public final int[] f11038f = {R.drawable.abc_btn_check_material, R.drawable.abc_btn_radio_material, R.drawable.abc_btn_check_material_anim, R.drawable.abc_btn_radio_material_anim};

    public static boolean a(int[] iArr, int i4) {
        for (int i5 : iArr) {
            if (i5 == i4) {
                return true;
            }
        }
        return false;
    }

    public static ColorStateList b(int i4, Context context) {
        int c4 = M0.c(R.attr.colorControlHighlight, context);
        int b4 = M0.b(R.attr.colorButtonNormal, context);
        return new ColorStateList(new int[][]{M0.f10800b, M0.f10802d, M0.f10801c, M0.f10804f}, new int[]{b4, E.a.h(c4, i4), E.a.h(c4, i4), i4});
    }

    public static LayerDrawable c(H0 h02, Context context, int i4) {
        BitmapDrawable bitmapDrawable;
        BitmapDrawable bitmapDrawable2;
        BitmapDrawable bitmapDrawable3;
        int dimensionPixelSize = context.getResources().getDimensionPixelSize(i4);
        Drawable e4 = h02.e(R.drawable.abc_star_black_48dp, context);
        Drawable e5 = h02.e(R.drawable.abc_star_half_black_48dp, context);
        if ((e4 instanceof BitmapDrawable) && e4.getIntrinsicWidth() == dimensionPixelSize && e4.getIntrinsicHeight() == dimensionPixelSize) {
            bitmapDrawable = (BitmapDrawable) e4;
            bitmapDrawable2 = new BitmapDrawable(bitmapDrawable.getBitmap());
        } else {
            Bitmap createBitmap = Bitmap.createBitmap(dimensionPixelSize, dimensionPixelSize, Bitmap.Config.ARGB_8888);
            Canvas canvas = new Canvas(createBitmap);
            e4.setBounds(0, 0, dimensionPixelSize, dimensionPixelSize);
            e4.draw(canvas);
            bitmapDrawable = new BitmapDrawable(createBitmap);
            bitmapDrawable2 = new BitmapDrawable(createBitmap);
        }
        bitmapDrawable2.setTileModeX(Shader.TileMode.REPEAT);
        if ((e5 instanceof BitmapDrawable) && e5.getIntrinsicWidth() == dimensionPixelSize && e5.getIntrinsicHeight() == dimensionPixelSize) {
            bitmapDrawable3 = (BitmapDrawable) e5;
        } else {
            Bitmap createBitmap2 = Bitmap.createBitmap(dimensionPixelSize, dimensionPixelSize, Bitmap.Config.ARGB_8888);
            Canvas canvas2 = new Canvas(createBitmap2);
            e5.setBounds(0, 0, dimensionPixelSize, dimensionPixelSize);
            e5.draw(canvas2);
            bitmapDrawable3 = new BitmapDrawable(createBitmap2);
        }
        LayerDrawable layerDrawable = new LayerDrawable(new Drawable[]{bitmapDrawable, bitmapDrawable3, bitmapDrawable2});
        layerDrawable.setId(0, 16908288);
        layerDrawable.setId(1, 16908303);
        layerDrawable.setId(2, 16908301);
        return layerDrawable;
    }

    public static void e(Drawable drawable, int i4, PorterDuff.Mode mode) {
        Rect rect = C1154o0.f10945a;
        Drawable mutate = drawable.mutate();
        if (mode == null) {
            mode = C1117A.f10717b;
        }
        mutate.setColorFilter(C1117A.c(i4, mode));
    }

    public final ColorStateList d(int i4, Context context) {
        if (i4 == R.drawable.abc_edit_text_material) {
            return B.c.a(R.color.abc_tint_edittext, context);
        }
        if (i4 == R.drawable.abc_switch_track_mtrl_alpha) {
            return B.c.a(R.color.abc_tint_switch_track, context);
        }
        if (i4 != R.drawable.abc_switch_thumb_material) {
            if (i4 == R.drawable.abc_btn_default_mtrl_shape) {
                return b(M0.c(R.attr.colorButtonNormal, context), context);
            }
            if (i4 == R.drawable.abc_btn_borderless_material) {
                return b(0, context);
            }
            if (i4 == R.drawable.abc_btn_colored_material) {
                return b(M0.c(R.attr.colorAccent, context), context);
            }
            if (i4 == R.drawable.abc_spinner_mtrl_am_alpha || i4 == R.drawable.abc_spinner_textfield_background_material) {
                return B.c.a(R.color.abc_tint_spinner, context);
            }
            if (a(this.f11034b, i4)) {
                return M0.d(R.attr.colorControlNormal, context);
            }
            if (a(this.f11037e, i4)) {
                return B.c.a(R.color.abc_tint_default, context);
            }
            if (a(this.f11038f, i4)) {
                return B.c.a(R.color.abc_tint_btn_checkable, context);
            }
            if (i4 == R.drawable.abc_seekbar_thumb_material) {
                return B.c.a(R.color.abc_tint_seek_thumb, context);
            }
            return null;
        }
        int[][] iArr = new int[3];
        int[] iArr2 = new int[3];
        ColorStateList d4 = M0.d(R.attr.colorSwitchThumbNormal, context);
        if (d4 == null || !d4.isStateful()) {
            iArr[0] = M0.f10800b;
            iArr2[0] = M0.b(R.attr.colorSwitchThumbNormal, context);
            iArr[1] = M0.f10803e;
            iArr2[1] = M0.c(R.attr.colorControlActivated, context);
            iArr[2] = M0.f10804f;
            iArr2[2] = M0.c(R.attr.colorSwitchThumbNormal, context);
        } else {
            int[] iArr3 = M0.f10800b;
            iArr[0] = iArr3;
            iArr2[0] = d4.getColorForState(iArr3, 0);
            iArr[1] = M0.f10803e;
            iArr2[1] = M0.c(R.attr.colorControlActivated, context);
            iArr[2] = M0.f10804f;
            iArr2[2] = d4.getDefaultColor();
        }
        return new ColorStateList(iArr, iArr2);
    }
}
