package com.android.launcher3.icons;

import android.content.Context;
import android.graphics.drawable.Drawable;
import com.android.launcher3.LauncherAppState;
import com.android.launcher3.icons.BaseIconFactory;
import com.android.launcher3.icons.ComponentWithLabel;
/* loaded from: classes.dex */
public interface ComponentWithLabelAndIcon extends ComponentWithLabel {

    /* loaded from: classes.dex */
    public final class ComponentWithIconCachingLogic extends ComponentWithLabel.ComponentCachingLogic {
        public ComponentWithIconCachingLogic(Context context) {
            super(context, true);
        }

        @Override // com.android.launcher3.icons.ComponentWithLabel.ComponentCachingLogic
        public final /* bridge */ /* synthetic */ BitmapInfo loadIcon(Context context, ComponentWithLabel componentWithLabel) {
            return loadIcon(context, (ComponentWithLabelAndIcon) componentWithLabel);
        }

        @Override // com.android.launcher3.icons.ComponentWithLabel.ComponentCachingLogic, com.android.launcher3.icons.cache.CachingLogic
        public final /* bridge */ /* synthetic */ BitmapInfo loadIcon(Context context, Object obj) {
            return loadIcon(context, (ComponentWithLabelAndIcon) obj);
        }

        public static BitmapInfo loadIcon(Context context, ComponentWithLabelAndIcon componentWithLabelAndIcon) {
            Drawable fullResIcon = componentWithLabelAndIcon.getFullResIcon(LauncherAppState.getInstance(context).getIconCache());
            if (fullResIcon == null) {
                return BitmapInfo.LOW_RES_INFO;
            }
            LauncherIcons obtain = LauncherIcons.obtain(context);
            try {
                BaseIconFactory.IconOptions iconOptions = new BaseIconFactory.IconOptions();
                iconOptions.mUserHandle = componentWithLabelAndIcon.getUser();
                BitmapInfo createBadgedIconBitmap = obtain.createBadgedIconBitmap(fullResIcon, iconOptions);
                obtain.recycle();
                return createBadgedIconBitmap;
            } catch (Throwable th) {
                try {
                    obtain.recycle();
                } catch (Throwable th2) {
                    th.addSuppressed(th2);
                }
                throw th;
            }
        }
    }

    Drawable getFullResIcon(IconCache iconCache);
}
