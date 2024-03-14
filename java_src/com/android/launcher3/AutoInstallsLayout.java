package com.android.launcher3;

import android.content.ComponentName;
import android.content.ContentValues;
import android.content.Context;
import android.content.Intent;
import android.content.pm.LauncherActivityInfo;
import android.content.pm.LauncherApps;
import android.content.pm.PackageManager;
import android.content.res.Resources;
import android.content.res.XmlResourceParser;
import android.database.sqlite.SQLiteDatabase;
import android.os.Bundle;
import android.text.TextUtils;
import android.util.ArrayMap;
import android.util.AttributeSet;
import android.util.Log;
import android.util.Xml;
import com.android.launcher3.model.DatabaseHelper;
import com.android.launcher3.model.data.AppInfo;
import com.android.launcher3.pm.UserCache;
import com.android.launcher3.provider.LauncherDbUtils;
import com.android.launcher3.qsb.QsbContainerView;
import com.android.launcher3.util.IntArray;
import com.android.launcher3.util.Partner;
import com.android.launcher3.widget.LauncherWidgetHolder;
import j.C1080K;
import java.util.Locale;
import java.util.Map;
import java.util.function.Supplier;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserException;
/* loaded from: classes.dex */
public class AutoInstallsLayout {
    private final Map mActivityOverride;
    protected final LauncherWidgetHolder mAppWidgetHolder;
    protected final LayoutParserCallback mCallback;
    private final int mColumnCount;
    protected final Context mContext;
    protected SQLiteDatabase mDb;
    protected final Supplier mInitialLayoutSupplier;
    protected final PackageManager mPackageManager;
    protected final String mRootTag;
    private final int mRowCount;
    protected final SourceResources mSourceRes;
    private final int[] mTemp;
    final ContentValues mValues;

    /* loaded from: classes.dex */
    public class FolderParser implements TagParser {
        private final ArrayMap mFolderElements;

        public FolderParser(ArrayMap arrayMap) {
            this.mFolderElements = arrayMap;
        }

        @Override // com.android.launcher3.AutoInstallsLayout.TagParser
        public int parseAndAdd(XmlPullParser xmlPullParser) {
            String attributeValue;
            int attributeResourceValue = AutoInstallsLayout.getAttributeResourceValue(xmlPullParser, "title");
            AutoInstallsLayout autoInstallsLayout = AutoInstallsLayout.this;
            if (attributeResourceValue != 0) {
                attributeValue = autoInstallsLayout.mSourceRes.getString(attributeResourceValue);
            } else {
                attributeValue = AutoInstallsLayout.getAttributeValue(xmlPullParser, "titleText");
                if (TextUtils.isEmpty(attributeValue)) {
                    attributeValue = "";
                }
            }
            autoInstallsLayout.mValues.put("title", attributeValue);
            ContentValues contentValues = autoInstallsLayout.mValues;
            contentValues.put("itemType", (Integer) 2);
            contentValues.put("spanX", (Integer) 1);
            contentValues.put("spanY", (Integer) 1);
            LayoutParserCallback layoutParserCallback = autoInstallsLayout.mCallback;
            contentValues.put("_id", Integer.valueOf(((DatabaseHelper) layoutParserCallback).generateNewItemId()));
            int dbInsertAndCheck = ((DatabaseHelper) layoutParserCallback).dbInsertAndCheck(autoInstallsLayout.mDb, "favorites", contentValues);
            if (dbInsertAndCheck < 0) {
                return -1;
            }
            ContentValues contentValues2 = new ContentValues(contentValues);
            IntArray intArray = new IntArray();
            int depth = xmlPullParser.getDepth();
            int i4 = 0;
            while (true) {
                int next = xmlPullParser.next();
                if (next == 3 && xmlPullParser.getDepth() <= depth) {
                    if (intArray.size() < 2) {
                        autoInstallsLayout.mDb.delete("favorites", LauncherDbUtils.itemIdMatch(dbInsertAndCheck), null);
                        if (intArray.size() == 1) {
                            ContentValues contentValues3 = new ContentValues();
                            contentValues3.put("container", contentValues2.getAsInteger("container"));
                            contentValues3.put("screen", contentValues2.getAsInteger("screen"));
                            contentValues3.put("cellX", contentValues2.getAsInteger("cellX"));
                            contentValues3.put("cellY", contentValues2.getAsInteger("cellY"));
                            int i5 = intArray.get(0);
                            autoInstallsLayout.mDb.update("favorites", contentValues3, C1080K.a("_id=", i5), null);
                            return i5;
                        }
                        return -1;
                    }
                    return dbInsertAndCheck;
                } else if (next == 2) {
                    contentValues.clear();
                    contentValues.put("container", Integer.valueOf(dbInsertAndCheck));
                    contentValues.put("rank", Integer.valueOf(i4));
                    TagParser tagParser = (TagParser) this.mFolderElements.get(xmlPullParser.getName());
                    if (tagParser == null) {
                        throw new RuntimeException("Invalid folder item " + xmlPullParser.getName());
                    }
                    int parseAndAdd = tagParser.parseAndAdd(xmlPullParser);
                    if (parseAndAdd >= 0) {
                        intArray.add(parseAndAdd);
                        i4++;
                    }
                }
            }
        }
    }

    /* loaded from: classes.dex */
    public interface LayoutParserCallback {
    }

    /* loaded from: classes.dex */
    public final class SearchWidgetParser extends ShortcutParser {
        public SearchWidgetParser() {
            super(AutoInstallsLayout.this, 3);
        }

        @Override // com.android.launcher3.AutoInstallsLayout.ShortcutParser
        public final ComponentName getComponentName(XmlPullParser xmlPullParser) {
            return QsbContainerView.getSearchComponentName(AutoInstallsLayout.this.mContext);
        }

        @Override // com.android.launcher3.AutoInstallsLayout.ShortcutParser
        public final int verifyAndInsert(ComponentName componentName, Bundle bundle) {
            AutoInstallsLayout autoInstallsLayout = AutoInstallsLayout.this;
            autoInstallsLayout.mValues.put("options", (Integer) 1);
            ContentValues contentValues = autoInstallsLayout.mValues;
            contentValues.put("restored", Integer.valueOf(contentValues.getAsInteger("restored").intValue() | 4));
            return super.verifyAndInsert(componentName, bundle);
        }
    }

    /* loaded from: classes.dex */
    public class ShortcutParser implements TagParser {

        /* renamed from: a  reason: collision with root package name */
        public final /* synthetic */ int f4412a;
        final /* synthetic */ AutoInstallsLayout this$0;

        public /* synthetic */ ShortcutParser(AutoInstallsLayout autoInstallsLayout, int i4) {
            this.f4412a = i4;
            this.this$0 = autoInstallsLayout;
        }

        public ComponentName getComponentName(XmlPullParser xmlPullParser) {
            String attributeValue = AutoInstallsLayout.getAttributeValue(xmlPullParser, "packageName");
            String attributeValue2 = AutoInstallsLayout.getAttributeValue(xmlPullParser, "className");
            if (TextUtils.isEmpty(attributeValue) || TextUtils.isEmpty(attributeValue2)) {
                return null;
            }
            return new ComponentName(attributeValue, attributeValue2);
        }

        public int invalidPackageOrClass(XmlPullParser xmlPullParser) {
            Log.w("AutoInstalls", "Skipping invalid <favorite> with no component");
            return -1;
        }

        /* JADX WARN: Code restructure failed: missing block: B:50:0x0191, code lost:
            throw new java.lang.RuntimeException("Widget extras must have a key and value");
         */
        @Override // com.android.launcher3.AutoInstallsLayout.TagParser
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public final int parseAndAdd(org.xmlpull.v1.XmlPullParser r15) {
            /*
                Method dump skipped, instructions count: 420
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: com.android.launcher3.AutoInstallsLayout.ShortcutParser.parseAndAdd(org.xmlpull.v1.XmlPullParser):int");
        }

        public int verifyAndInsert(ComponentName componentName, Bundle bundle) {
            AutoInstallsLayout autoInstallsLayout = this.this$0;
            autoInstallsLayout.mValues.put("appWidgetProvider", componentName.flattenToString());
            ContentValues contentValues = autoInstallsLayout.mValues;
            contentValues.put("restored", (Integer) 35);
            LayoutParserCallback layoutParserCallback = autoInstallsLayout.mCallback;
            contentValues.put("_id", Integer.valueOf(((DatabaseHelper) layoutParserCallback).generateNewItemId()));
            if (!bundle.isEmpty()) {
                contentValues.put("intent", new Intent().putExtras(bundle).toUri(0));
            }
            int dbInsertAndCheck = ((DatabaseHelper) layoutParserCallback).dbInsertAndCheck(autoInstallsLayout.mDb, "favorites", contentValues);
            if (dbInsertAndCheck < 0) {
                return -1;
            }
            return dbInsertAndCheck;
        }
    }

    /* loaded from: classes.dex */
    public interface SourceResources {

        /* renamed from: com.android.launcher3.AutoInstallsLayout$SourceResources$1  reason: invalid class name */
        /* loaded from: classes.dex */
        final class AnonymousClass1 implements SourceResources {
            final /* synthetic */ Resources val$res;

            public AnonymousClass1(Resources resources) {
                this.val$res = resources;
            }

            @Override // com.android.launcher3.AutoInstallsLayout.SourceResources
            public final String getString(int i4) {
                return this.val$res.getString(i4);
            }

            @Override // com.android.launcher3.AutoInstallsLayout.SourceResources
            public final XmlResourceParser getXml(int i4) {
                return this.val$res.getXml(i4);
            }
        }

        static SourceResources wrap(Resources resources) {
            return new AnonymousClass1(resources);
        }

        default String getString(int i4) {
            throw new Resources.NotFoundException();
        }

        default XmlResourceParser getXml(int i4) {
            throw new Resources.NotFoundException();
        }
    }

    /* loaded from: classes.dex */
    public interface TagParser {
        int parseAndAdd(XmlPullParser xmlPullParser);
    }

    public AutoInstallsLayout(Context context, LauncherWidgetHolder launcherWidgetHolder, DatabaseHelper databaseHelper, SourceResources sourceResources, Supplier supplier, String str) {
        this.mTemp = new int[2];
        this.mContext = context;
        this.mAppWidgetHolder = launcherWidgetHolder;
        this.mCallback = databaseHelper;
        this.mPackageManager = context.getPackageManager();
        this.mValues = new ContentValues();
        this.mRootTag = str;
        this.mSourceRes = sourceResources;
        this.mInitialLayoutSupplier = supplier;
        InvariantDeviceProfile idp = LauncherAppState.getIDP(context);
        this.mRowCount = idp.numRows;
        this.mColumnCount = idp.numColumns;
        this.mActivityOverride = ((LauncherApps) context.getSystemService(LauncherApps.class)).getActivityOverrides();
    }

    public static void beginDocument(XmlPullParser xmlPullParser, String str) {
        int next;
        do {
            next = xmlPullParser.next();
            if (next == 2) {
                break;
            }
        } while (next != 1);
        if (next != 2) {
            throw new XmlPullParserException("No start tag found");
        }
        if (xmlPullParser.getName().equals(str)) {
            return;
        }
        throw new XmlPullParserException("Unexpected start tag: found " + xmlPullParser.getName() + ", expected " + str);
    }

    public static AutoInstallsLayout get(Context context, LauncherWidgetHolder launcherWidgetHolder, DatabaseHelper databaseHelper) {
        Partner partner = Partner.get(context.getPackageManager(), "android.autoinstalls.config.action.PLAY_AUTO_INSTALL");
        if (partner == null) {
            return null;
        }
        InvariantDeviceProfile idp = LauncherAppState.getIDP(context);
        Locale locale = Locale.ENGLISH;
        String format = String.format(locale, "default_layout_%dx%d_h%s", Integer.valueOf(idp.numColumns), Integer.valueOf(idp.numRows), Integer.valueOf(idp.numDatabaseHotseatIcons));
        int xmlResId = partner.getXmlResId(format);
        if (xmlResId == 0) {
            Log.d("AutoInstalls", "Formatted layout: " + format + " not found. Trying layout without hosteat");
            format = String.format(locale, "default_layout_%dx%d", Integer.valueOf(idp.numColumns), Integer.valueOf(idp.numRows));
            xmlResId = partner.getXmlResId(format);
        }
        if (xmlResId == 0) {
            Log.d("AutoInstalls", "Formatted layout: " + format + " not found. Trying the default layout");
            xmlResId = partner.getXmlResId("default_layout");
        }
        int i4 = xmlResId;
        if (i4 == 0) {
            Log.e("AutoInstalls", "Layout definition not found in package: " + partner.getPackageName());
            return null;
        }
        return new AutoInstallsLayout(context, launcherWidgetHolder, databaseHelper, partner.getResources(), i4, "workspace");
    }

    public static int getAttributeResourceValue(XmlPullParser xmlPullParser, String str) {
        AttributeSet asAttributeSet = Xml.asAttributeSet(xmlPullParser);
        int attributeResourceValue = asAttributeSet.getAttributeResourceValue("http://schemas.android.com/apk/res-auto/com.android.launcher3", str, 0);
        return attributeResourceValue == 0 ? asAttributeSet.getAttributeResourceValue(null, str, 0) : attributeResourceValue;
    }

    public static String getAttributeValue(XmlPullParser xmlPullParser, String str) {
        String attributeValue = xmlPullParser.getAttributeValue("http://schemas.android.com/apk/res-auto/com.android.launcher3", str);
        return attributeValue == null ? xmlPullParser.getAttributeValue(null, str) : attributeValue;
    }

    public final int addShortcut(String str, Intent intent, int i4) {
        ComponentName component;
        DatabaseHelper databaseHelper = (DatabaseHelper) this.mCallback;
        int generateNewItemId = databaseHelper.generateNewItemId();
        String uri = intent.toUri(0);
        ContentValues contentValues = this.mValues;
        contentValues.put("intent", uri);
        contentValues.put("title", str);
        contentValues.put("itemType", Integer.valueOf(i4));
        contentValues.put("spanX", (Integer) 1);
        contentValues.put("spanY", (Integer) 1);
        contentValues.put("_id", Integer.valueOf(generateNewItemId));
        if (i4 == 0 && (component = intent.getComponent()) != null) {
            String packageName = component.getPackageName();
            Map map = this.mActivityOverride;
            if (map.containsKey(packageName)) {
                LauncherActivityInfo launcherActivityInfo = (LauncherActivityInfo) map.get(component.getPackageName());
                contentValues.put("profileId", Long.valueOf(((UserCache) UserCache.INSTANCE.get(this.mContext)).getSerialNumberForUser(launcherActivityInfo.getUser())));
                AppInfo[] appInfoArr = AppInfo.EMPTY_ARRAY;
                contentValues.put("intent", AppInfo.makeLaunchIntent(launcherActivityInfo.getComponentName()).toUri(0));
            }
        }
        if (databaseHelper.dbInsertAndCheck(this.mDb, "favorites", contentValues) < 0) {
            return -1;
        }
        return generateNewItemId;
    }

    public ArrayMap getFolderElementsMap() {
        ArrayMap arrayMap = new ArrayMap();
        arrayMap.put("appicon", new ShortcutParser(this, 1));
        arrayMap.put("autoinstall", new ShortcutParser(this, 2));
        arrayMap.put("shortcut", new ShortcutParser(this, 0));
        return arrayMap;
    }

    public ArrayMap getLayoutElementsMap() {
        ArrayMap arrayMap = new ArrayMap();
        arrayMap.put("appicon", new ShortcutParser(this, 1));
        arrayMap.put("autoinstall", new ShortcutParser(this, 2));
        arrayMap.put("folder", new FolderParser(getFolderElementsMap()));
        arrayMap.put("appwidget", new ShortcutParser(this, 3));
        arrayMap.put("searchwidget", new SearchWidgetParser());
        arrayMap.put("shortcut", new ShortcutParser(this, 0));
        return arrayMap;
    }

    public final int loadLayout(SQLiteDatabase sQLiteDatabase, IntArray intArray) {
        this.mDb = sQLiteDatabase;
        try {
            return parseLayout((XmlPullParser) this.mInitialLayoutSupplier.get(), intArray);
        } catch (Exception e4) {
            Log.e("AutoInstalls", "Error parsing layout: ", e4);
            return -1;
        }
    }

    public void parseContainerAndScreen(XmlPullParser xmlPullParser, int[] iArr) {
        if ("hotseat".equals(getAttributeValue(xmlPullParser, "container"))) {
            iArr[0] = -101;
            iArr[1] = Integer.parseInt(getAttributeValue(xmlPullParser, "rank"));
            return;
        }
        iArr[0] = -100;
        iArr[1] = Integer.parseInt(getAttributeValue(xmlPullParser, "screen"));
    }

    public final int parseLayout(XmlPullParser xmlPullParser, IntArray intArray) {
        int parseInt;
        int parseInt2;
        beginDocument(xmlPullParser, this.mRootTag);
        int depth = xmlPullParser.getDepth();
        ArrayMap layoutElementsMap = getLayoutElementsMap();
        int i4 = 0;
        while (true) {
            int next = xmlPullParser.next();
            if (next == 3 && xmlPullParser.getDepth() <= depth) {
                break;
            }
            int i5 = 1;
            if (next == 1) {
                break;
            } else if (next == 2) {
                if ("include".equals(xmlPullParser.getName())) {
                    int attributeResourceValue = getAttributeResourceValue(xmlPullParser, "workspace");
                    if (attributeResourceValue != 0) {
                        i5 = parseLayout(this.mSourceRes.getXml(attributeResourceValue), intArray);
                        i4 += i5;
                    }
                    i5 = 0;
                    i4 += i5;
                } else {
                    ContentValues contentValues = this.mValues;
                    contentValues.clear();
                    int[] iArr = this.mTemp;
                    parseContainerAndScreen(xmlPullParser, iArr);
                    int i6 = iArr[0];
                    int i7 = iArr[1];
                    contentValues.put("container", Integer.valueOf(i6));
                    contentValues.put("screen", Integer.valueOf(i7));
                    String attributeValue = getAttributeValue(xmlPullParser, "x");
                    if (!TextUtils.isEmpty(attributeValue) && (parseInt2 = Integer.parseInt(attributeValue)) < 0) {
                        attributeValue = Integer.toString(this.mColumnCount + parseInt2);
                    }
                    contentValues.put("cellX", attributeValue);
                    String attributeValue2 = getAttributeValue(xmlPullParser, "y");
                    if (!TextUtils.isEmpty(attributeValue2) && (parseInt = Integer.parseInt(attributeValue2)) < 0) {
                        attributeValue2 = Integer.toString(this.mRowCount + parseInt);
                    }
                    contentValues.put("cellY", attributeValue2);
                    TagParser tagParser = (TagParser) layoutElementsMap.get(xmlPullParser.getName());
                    if (tagParser != null && tagParser.parseAndAdd(xmlPullParser) >= 0) {
                        if (!intArray.contains(i7) && i6 == -100) {
                            intArray.add(i7);
                        }
                        i4 += i5;
                    }
                    i5 = 0;
                    i4 += i5;
                }
            }
        }
        return i4;
    }

    public AutoInstallsLayout(Context context, LauncherWidgetHolder launcherWidgetHolder, DatabaseHelper databaseHelper, final Resources resources, final int i4, String str) {
        this(context, launcherWidgetHolder, databaseHelper, new SourceResources.AnonymousClass1(resources), new Supplier() { // from class: com.android.launcher3.e
            @Override // java.util.function.Supplier
            public final Object get() {
                return resources.getXml(i4);
            }
        }, str);
    }
}
