package com.google.android.systemui.smartspace.uitemplate;

import K2.AbstractC0041n;
import K2.C0032e;
import L2.b;
import M2.f;
import M2.g;
import android.app.smartspace.SmartspaceTarget;
import android.app.smartspace.uitemplatedata.Icon;
import android.app.smartspace.uitemplatedata.SubImageTemplateData;
import android.app.smartspace.uitemplatedata.TapAction;
import android.content.ContentResolver;
import android.content.Context;
import android.content.res.ColorStateList;
import android.graphics.drawable.AnimationDrawable;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.Icon;
import android.os.Bundle;
import android.os.Handler;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.util.Log;
import android.widget.ImageView;
import com.android.systemui.shared.R;
import com.google.android.systemui.smartspace.uitemplate.SubImageTemplateCard;
import java.lang.ref.WeakReference;
import java.util.Arrays;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.TreeMap;
import java.util.function.Consumer;
import java.util.stream.Collectors;
import n1.d;
/* loaded from: classes.dex */
public class SubImageTemplateCard extends AbstractC0041n {

    /* renamed from: i  reason: collision with root package name */
    public static final /* synthetic */ int f8419i = 0;

    /* renamed from: e  reason: collision with root package name */
    public final int f8420e;

    /* renamed from: f  reason: collision with root package name */
    public final Handler f8421f;

    /* renamed from: g  reason: collision with root package name */
    public ImageView f8422g;

    /* renamed from: h  reason: collision with root package name */
    public final Map f8423h;

    public SubImageTemplateCard(Context context) {
        this(context, null);
    }

    @Override // android.view.View
    public final void onFinishInflate() {
        super.onFinishInflate();
        this.f8422g = (ImageView) findViewById(R.id.image_view);
    }

    @Override // K2.AbstractC0041n
    public final void s() {
        Map map = this.f8423h;
        if (map != null) {
            ((HashMap) map).clear();
        }
        ImageView imageView = this.f8422g;
        if (imageView == null) {
            return;
        }
        imageView.getLayoutParams().width = -2;
        this.f8422g.setImageDrawable(null);
        this.f8422g.setBackgroundTintList(null);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r4v1, types: [M2.b, android.graphics.drawable.Icon$OnDrawableLoadedListener] */
    @Override // K2.AbstractC0041n
    public final boolean t(SmartspaceTarget smartspaceTarget, d dVar, L2.d dVar2) {
        int i4;
        String str;
        TapAction tapAction;
        TreeMap treeMap;
        String sb;
        SubImageTemplateData templateData = smartspaceTarget.getTemplateData();
        if (!b.a(templateData) || templateData.getSubImages() == null || templateData.getSubImages().isEmpty()) {
            Log.w("SubImageTemplateCard", "SubImageTemplateData is null or has no SubImage or invalid template type");
            return false;
        }
        final List subImages = templateData.getSubImages();
        TapAction subImageAction = templateData.getSubImageAction();
        if (this.f8422g == null) {
            Log.w("SubImageTemplateCard", "No image view can be updated. Skipping background update...");
        } else if (subImageAction != null && subImageAction.getExtras() != null) {
            Bundle extras = subImageAction.getExtras();
            String string = extras.getString("imageDimensionRatio", "");
            if (!TextUtils.isEmpty(string)) {
                this.f8422g.getLayoutParams().width = 0;
                ((androidx.constraintlayout.widget.d) this.f8422g.getLayoutParams()).f2799G = string;
            }
            if (extras.getBoolean("shouldShowBackground", false)) {
                this.f8422g.setBackgroundTintList(ColorStateList.valueOf(getContext().getColor(R.color.smartspace_button_background)));
            }
        }
        int i5 = 200;
        if (subImageAction != null && subImageAction.getExtras() != null) {
            i5 = subImageAction.getExtras().getInt("GifFrameDurationMillis", 200);
        }
        final int i6 = i5;
        ContentResolver contentResolver = getContext().getApplicationContext().getContentResolver();
        TreeMap treeMap2 = new TreeMap();
        final WeakReference weakReference = new WeakReference(this.f8422g);
        String str2 = this.f998d;
        int i7 = 0;
        while (i7 < subImages.size()) {
            Icon icon = (Icon) subImages.get(i7);
            if (icon == null || icon.getIcon() == null) {
                i4 = i7;
                str = str2;
                tapAction = subImageAction;
                treeMap = treeMap2;
            } else {
                android.graphics.drawable.Icon icon2 = icon.getIcon();
                StringBuilder sb2 = new StringBuilder(icon2.getType());
                switch (icon2.getType()) {
                    case 1:
                    case 5:
                        sb2.append(icon2.getBitmap().hashCode());
                        sb = sb2.toString();
                        break;
                    case 2:
                        sb2.append(icon2.getResPackage());
                        sb2.append(String.format("0x%08x", Integer.valueOf(icon2.getResId())));
                        sb = sb2.toString();
                        break;
                    case 3:
                        sb2.append(Arrays.hashCode(icon2.getDataBytes()));
                        sb = sb2.toString();
                        break;
                    case 4:
                    case 6:
                        sb2.append(icon2.getUriString());
                        sb = sb2.toString();
                        break;
                    default:
                        sb = sb2.toString();
                        break;
                }
                final String str3 = sb;
                final String str4 = str2;
                tapAction = subImageAction;
                final TreeMap treeMap3 = treeMap2;
                treeMap = treeMap2;
                final int i8 = i7;
                i4 = i7;
                str = str2;
                ?? r4 = new Icon.OnDrawableLoadedListener() { // from class: M2.b
                    @Override // android.graphics.drawable.Icon.OnDrawableLoadedListener
                    public final void onDrawableLoaded(Drawable drawable) {
                        SubImageTemplateCard subImageTemplateCard = SubImageTemplateCard.this;
                        String str5 = str4;
                        String str6 = str3;
                        Map map = treeMap3;
                        int i9 = i8;
                        List list = subImages;
                        final int i10 = i6;
                        WeakReference weakReference2 = weakReference;
                        int i11 = SubImageTemplateCard.f8419i;
                        if (!str5.equals(subImageTemplateCard.f998d)) {
                            Log.d("SubImageTemplateCard", "SmartspaceTarget has changed. Skip the loaded result...");
                            return;
                        }
                        ((HashMap) subImageTemplateCard.f8423h).put(str6, drawable);
                        map.put(Integer.valueOf(i9), drawable);
                        if (map.size() == list.size()) {
                            final AnimationDrawable animationDrawable = new AnimationDrawable();
                            List list2 = (List) map.values().stream().filter(new c()).collect(Collectors.toList());
                            if (list2.isEmpty()) {
                                Log.w("SubImageTemplateCard", "All images are failed to load. Reset imageView");
                                ImageView imageView = subImageTemplateCard.f8422g;
                                if (imageView == null) {
                                    return;
                                }
                                imageView.getLayoutParams().width = -2;
                                subImageTemplateCard.f8422g.setImageDrawable(null);
                                subImageTemplateCard.f8422g.setBackgroundTintList(null);
                                return;
                            }
                            list2.forEach(new Consumer() { // from class: M2.d
                                @Override // java.util.function.Consumer
                                public final void accept(Object obj) {
                                    AnimationDrawable animationDrawable2 = animationDrawable;
                                    int i12 = i10;
                                    int i13 = SubImageTemplateCard.f8419i;
                                    animationDrawable2.addFrame((Drawable) obj, i12);
                                }
                            });
                            ImageView imageView2 = (ImageView) weakReference2.get();
                            imageView2.setImageDrawable(animationDrawable);
                            int intrinsicWidth = animationDrawable.getIntrinsicWidth();
                            if (imageView2.getLayoutParams().width != intrinsicWidth) {
                                Log.d("SubImageTemplateCard", "imageView requestLayout");
                                imageView2.getLayoutParams().width = intrinsicWidth;
                                imageView2.requestLayout();
                            }
                            animationDrawable.start();
                        }
                    }
                };
                if (((HashMap) this.f8423h).containsKey(str3) && ((HashMap) this.f8423h).get(str3) != null) {
                    r4.onDrawableLoaded((Drawable) ((HashMap) this.f8423h).get(str3));
                } else if (icon2.getType() == 4) {
                    new g().execute(new f(icon2.getUri(), contentResolver, this.f8420e, r4));
                } else {
                    icon2.loadDrawableAsync(getContext(), r4, this.f8421f);
                }
            }
            i7 = i4 + 1;
            subImageAction = tapAction;
            treeMap2 = treeMap;
            str2 = str;
        }
        TapAction tapAction2 = subImageAction;
        if (tapAction2 != null) {
            C0032e.f(this, smartspaceTarget, tapAction2, dVar, "SubImageTemplateCard", dVar2);
            return true;
        }
        return true;
    }

    @Override // K2.AbstractC0041n
    public final void u(int i4) {
    }

    public SubImageTemplateCard(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f8423h = new HashMap();
        this.f8421f = new Handler();
        this.f8420e = getResources().getDimensionPixelOffset(R.dimen.enhanced_smartspace_card_height);
    }
}
