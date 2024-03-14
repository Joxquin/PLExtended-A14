package com.android.launcher3;

import android.appwidget.AppWidgetManager;
import android.content.ComponentName;
import android.content.ContentValues;
import android.content.Context;
import android.content.Intent;
import android.content.pm.ActivityInfo;
import android.content.pm.PackageManager;
import android.content.pm.ResolveInfo;
import android.content.res.Resources;
import android.content.res.XmlResourceParser;
import android.os.Bundle;
import android.text.TextUtils;
import android.util.ArrayMap;
import android.util.Log;
import com.android.launcher3.AutoInstallsLayout;
import com.android.launcher3.model.DatabaseHelper;
import com.android.launcher3.util.Partner;
import com.android.launcher3.widget.LauncherWidgetHolder;
import java.net.URISyntaxException;
import java.util.List;
import org.xmlpull.v1.XmlPullParser;
/* loaded from: classes.dex */
public final class DefaultLayoutParser extends AutoInstallsLayout {

    /* loaded from: classes.dex */
    public final class AppShortcutWithUriParser extends AutoInstallsLayout.ShortcutParser {
        public AppShortcutWithUriParser() {
            super(DefaultLayoutParser.this, 1);
        }

        @Override // com.android.launcher3.AutoInstallsLayout.ShortcutParser
        public final int invalidPackageOrClass(XmlPullParser xmlPullParser) {
            boolean z4;
            String attributeValue = AutoInstallsLayout.getAttributeValue(xmlPullParser, "uri");
            if (TextUtils.isEmpty(attributeValue)) {
                Log.e("DefaultLayoutParser", "Skipping invalid <favorite> with no component or uri");
                return -1;
            }
            try {
                Intent parseUri = Intent.parseUri(attributeValue, 0);
                DefaultLayoutParser defaultLayoutParser = DefaultLayoutParser.this;
                ResolveInfo resolveActivity = defaultLayoutParser.mPackageManager.resolveActivity(parseUri, 65536);
                List<ResolveInfo> queryIntentActivities = defaultLayoutParser.mPackageManager.queryIntentActivities(parseUri, 65536);
                int i4 = 0;
                while (true) {
                    if (i4 >= queryIntentActivities.size()) {
                        z4 = true;
                        break;
                    }
                    ResolveInfo resolveInfo = queryIntentActivities.get(i4);
                    if (resolveInfo.activityInfo.name.equals(resolveActivity.activityInfo.name) && resolveInfo.activityInfo.packageName.equals(resolveActivity.activityInfo.packageName)) {
                        z4 = false;
                        break;
                    }
                    i4++;
                }
                if (z4) {
                    int size = queryIntentActivities.size();
                    ResolveInfo resolveInfo2 = null;
                    for (int i5 = 0; i5 < size; i5++) {
                        try {
                        } catch (PackageManager.NameNotFoundException e4) {
                            Log.w("DefaultLayoutParser", "Unable to get info about resolve results", e4);
                        }
                        if ((defaultLayoutParser.mPackageManager.getApplicationInfo(queryIntentActivities.get(i5).activityInfo.packageName, 0).flags & 1) != 0) {
                            if (resolveInfo2 != null) {
                                resolveActivity = null;
                                break;
                            }
                            resolveInfo2 = queryIntentActivities.get(i5);
                        }
                    }
                    resolveActivity = resolveInfo2;
                    if (resolveActivity == null) {
                        Log.w("DefaultLayoutParser", "No preference or single system activity found for " + parseUri.toString());
                        return -1;
                    }
                }
                ActivityInfo activityInfo = resolveActivity.activityInfo;
                Intent launchIntentForPackage = defaultLayoutParser.mPackageManager.getLaunchIntentForPackage(activityInfo.packageName);
                if (launchIntentForPackage == null) {
                    return -1;
                }
                launchIntentForPackage.setFlags(270532608);
                return defaultLayoutParser.addShortcut(activityInfo.loadLabel(defaultLayoutParser.mPackageManager).toString(), launchIntentForPackage, 0);
            } catch (URISyntaxException e5) {
                Log.e("DefaultLayoutParser", "Unable to add meta-favorite: " + attributeValue, e5);
                return -1;
            }
        }
    }

    /* loaded from: classes.dex */
    public final class AppWidgetParser extends AutoInstallsLayout.ShortcutParser {
        public AppWidgetParser() {
            super(DefaultLayoutParser.this, 3);
        }

        @Override // com.android.launcher3.AutoInstallsLayout.ShortcutParser
        public final int verifyAndInsert(ComponentName componentName, Bundle bundle) {
            int allocateAppWidgetId;
            DefaultLayoutParser defaultLayoutParser = DefaultLayoutParser.this;
            int i4 = -1;
            try {
                defaultLayoutParser.mPackageManager.getReceiverInfo(componentName, 0);
            } catch (Exception unused) {
                ComponentName componentName2 = new ComponentName(defaultLayoutParser.mPackageManager.currentToCanonicalPackageNames(new String[]{componentName.getPackageName()})[0], componentName.getClassName());
                try {
                    defaultLayoutParser.mPackageManager.getReceiverInfo(componentName2, 0);
                    componentName = componentName2;
                } catch (Exception unused2) {
                    Log.d("DefaultLayoutParser", "Can't find widget provider: " + componentName2.getClassName());
                    return -1;
                }
            }
            Context context = defaultLayoutParser.mContext;
            AutoInstallsLayout.LayoutParserCallback layoutParserCallback = defaultLayoutParser.mCallback;
            LauncherWidgetHolder launcherWidgetHolder = defaultLayoutParser.mAppWidgetHolder;
            ContentValues contentValues = defaultLayoutParser.mValues;
            AppWidgetManager appWidgetManager = AppWidgetManager.getInstance(context);
            try {
                allocateAppWidgetId = launcherWidgetHolder.allocateAppWidgetId();
            } catch (RuntimeException e4) {
                Log.e("DefaultLayoutParser", "Problem allocating appWidgetId", e4);
            }
            if (!appWidgetManager.bindAppWidgetIdIfAllowed(allocateAppWidgetId, componentName)) {
                Log.e("DefaultLayoutParser", "Unable to bind app widget id " + componentName);
                launcherWidgetHolder.deleteAppWidgetId(allocateAppWidgetId);
                return -1;
            }
            contentValues.put("appWidgetId", Integer.valueOf(allocateAppWidgetId));
            contentValues.put("appWidgetProvider", componentName.flattenToString());
            contentValues.put("_id", Integer.valueOf(((DatabaseHelper) layoutParserCallback).generateNewItemId()));
            i4 = ((DatabaseHelper) layoutParserCallback).dbInsertAndCheck(defaultLayoutParser.mDb, "favorites", contentValues);
            if (i4 < 0) {
                launcherWidgetHolder.deleteAppWidgetId(allocateAppWidgetId);
                return i4;
            }
            if (!bundle.isEmpty()) {
                Intent intent = new Intent("com.android.launcher.action.APPWIDGET_DEFAULT_WORKSPACE_CONFIGURE");
                intent.setComponent(componentName);
                intent.putExtras(bundle);
                intent.putExtra("appWidgetId", allocateAppWidgetId);
                defaultLayoutParser.mContext.sendBroadcast(intent);
            }
            return i4;
        }
    }

    /* loaded from: classes.dex */
    final class MyFolderParser extends AutoInstallsLayout.FolderParser {
        public MyFolderParser() {
            super(DefaultLayoutParser.this.getFolderElementsMap());
        }

        @Override // com.android.launcher3.AutoInstallsLayout.FolderParser, com.android.launcher3.AutoInstallsLayout.TagParser
        public final int parseAndAdd(XmlPullParser xmlPullParser) {
            int attributeResourceValue = AutoInstallsLayout.getAttributeResourceValue(xmlPullParser, "folderItems");
            if (attributeResourceValue != 0) {
                xmlPullParser = DefaultLayoutParser.this.mSourceRes.getXml(attributeResourceValue);
                AutoInstallsLayout.beginDocument(xmlPullParser, "folder");
            }
            return super.parseAndAdd(xmlPullParser);
        }
    }

    /* loaded from: classes.dex */
    final class PartnerFolderParser implements AutoInstallsLayout.TagParser {
        public PartnerFolderParser() {
        }

        @Override // com.android.launcher3.AutoInstallsLayout.TagParser
        public final int parseAndAdd(XmlPullParser xmlPullParser) {
            int xmlResId;
            DefaultLayoutParser defaultLayoutParser = DefaultLayoutParser.this;
            Partner partner = Partner.get(defaultLayoutParser.mPackageManager, "com.android.launcher3.action.PARTNER_CUSTOMIZATION");
            if (partner == null || (xmlResId = partner.getXmlResId("partner_folder")) == 0) {
                return -1;
            }
            XmlResourceParser xml = partner.getResources().getXml(xmlResId);
            AutoInstallsLayout.beginDocument(xml, "folder");
            return new AutoInstallsLayout.FolderParser(defaultLayoutParser.getFolderElementsMap()).parseAndAdd(xml);
        }
    }

    /* loaded from: classes.dex */
    public final class ResolveParser implements AutoInstallsLayout.TagParser {
        private final AppShortcutWithUriParser mChildParser;

        public ResolveParser(DefaultLayoutParser defaultLayoutParser) {
            this.mChildParser = new AppShortcutWithUriParser();
        }

        @Override // com.android.launcher3.AutoInstallsLayout.TagParser
        public final int parseAndAdd(XmlPullParser xmlPullParser) {
            int depth = xmlPullParser.getDepth();
            int i4 = -1;
            while (true) {
                int next = xmlPullParser.next();
                if (next == 3 && xmlPullParser.getDepth() <= depth) {
                    return i4;
                }
                if (next == 2 && i4 <= -1) {
                    String name = xmlPullParser.getName();
                    if ("favorite".equals(name)) {
                        i4 = this.mChildParser.parseAndAdd(xmlPullParser);
                    } else {
                        Log.e("DefaultLayoutParser", "Fallback groups can contain only favorites, found " + name);
                    }
                }
            }
        }
    }

    public DefaultLayoutParser(Context context, LauncherWidgetHolder launcherWidgetHolder, DatabaseHelper databaseHelper, Resources resources, int i4) {
        super(context, launcherWidgetHolder, databaseHelper, resources, i4, "favorites");
    }

    @Override // com.android.launcher3.AutoInstallsLayout
    public final ArrayMap getFolderElementsMap() {
        ArrayMap arrayMap = new ArrayMap();
        arrayMap.put("favorite", new AppShortcutWithUriParser());
        arrayMap.put("shortcut", new AutoInstallsLayout.ShortcutParser(this, 0));
        return arrayMap;
    }

    @Override // com.android.launcher3.AutoInstallsLayout
    public final ArrayMap getLayoutElementsMap() {
        ArrayMap arrayMap = new ArrayMap();
        arrayMap.put("favorite", new AppShortcutWithUriParser());
        arrayMap.put("appwidget", new AppWidgetParser());
        arrayMap.put("searchwidget", new AutoInstallsLayout.SearchWidgetParser());
        arrayMap.put("shortcut", new AutoInstallsLayout.ShortcutParser(this, 0));
        arrayMap.put("resolve", new ResolveParser(this));
        arrayMap.put("folder", new MyFolderParser());
        arrayMap.put("partner-folder", new PartnerFolderParser());
        return arrayMap;
    }

    @Override // com.android.launcher3.AutoInstallsLayout
    public final void parseContainerAndScreen(XmlPullParser xmlPullParser, int[] iArr) {
        iArr[0] = -100;
        String attributeValue = AutoInstallsLayout.getAttributeValue(xmlPullParser, "container");
        if (attributeValue != null) {
            iArr[0] = Integer.parseInt(attributeValue);
        }
        iArr[1] = Integer.parseInt(AutoInstallsLayout.getAttributeValue(xmlPullParser, "screen"));
    }
}
