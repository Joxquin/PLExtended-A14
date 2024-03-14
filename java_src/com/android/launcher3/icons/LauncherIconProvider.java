package com.android.launcher3.icons;

import android.content.Context;
import android.content.res.Resources;
import android.content.res.XmlResourceParser;
import android.text.TextUtils;
import android.util.ArrayMap;
import android.util.Log;
import com.android.launcher3.config.FeatureFlags;
import com.android.launcher3.icons.IconProvider;
import com.android.launcher3.util.Themes;
import com.android.systemui.shared.R;
import java.util.Collections;
import java.util.Map;
/* loaded from: classes.dex */
public final class LauncherIconProvider extends IconProvider {
    private static final Map DISABLED_MAP = Collections.emptyMap();
    private boolean mSupportsIconTheme;
    private Map mThemedIconMap;

    public LauncherIconProvider(Context context) {
        super(context);
        setIconThemeSupported(Themes.isThemedIconEnabled(context));
    }

    @Override // com.android.launcher3.icons.IconProvider
    public final String getSystemIconState() {
        StringBuilder sb = new StringBuilder();
        sb.append(super.getSystemIconState());
        sb.append(this.mSupportsIconTheme ? ",with-theme" : ",no-theme");
        return sb.toString();
    }

    @Override // com.android.launcher3.icons.IconProvider
    public final IconProvider.ThemeData getThemeDataForPackage(String str) {
        Map map = this.mThemedIconMap;
        ArrayMap arrayMap = map;
        if (map == null) {
            ArrayMap arrayMap2 = new ArrayMap();
            Resources resources = this.mContext.getResources();
            try {
                XmlResourceParser xml = resources.getXml(R.xml.grayscale_icon_map);
                int depth = xml.getDepth();
                while (true) {
                    int next = xml.next();
                    if (next == 2 || next == 1) {
                        break;
                    }
                }
                while (true) {
                    int next2 = xml.next();
                    if ((next2 != 3 || xml.getDepth() > depth) && next2 != 1) {
                        if (next2 == 2 && "icon".equals(xml.getName())) {
                            String attributeValue = xml.getAttributeValue(null, "package");
                            int attributeResourceValue = xml.getAttributeResourceValue(null, "drawable", 0);
                            if (attributeResourceValue != 0 && !TextUtils.isEmpty(attributeValue)) {
                                arrayMap2.put(attributeValue, new IconProvider.ThemeData(attributeResourceValue, resources));
                            }
                        }
                    }
                }
                xml.close();
            } catch (Exception e4) {
                Log.e("LIconProvider", "Unable to parse icon map", e4);
            }
            this.mThemedIconMap = arrayMap2;
            arrayMap = arrayMap2;
        }
        return (IconProvider.ThemeData) arrayMap.get(str);
    }

    public final void setIconThemeSupported(boolean z4) {
        this.mSupportsIconTheme = z4;
        this.mThemedIconMap = (z4 && FeatureFlags.USE_LOCAL_ICON_OVERRIDES.get()) ? null : DISABLED_MAP;
    }
}
