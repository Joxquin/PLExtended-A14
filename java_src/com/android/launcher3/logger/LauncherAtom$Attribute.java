package com.android.launcher3.logger;

import com.google.protobuf.L;
import com.google.protobuf.M;
/* loaded from: classes.dex */
public enum LauncherAtom$Attribute implements L {
    UNKNOWN(0),
    DEFAULT_LAYOUT(1),
    BACKUP_RESTORE(2),
    PINITEM(3),
    ALLAPPS_ATOZ(4),
    WIDGETS(5),
    ADD_TO_HOMESCREEN(6),
    ALLAPPS_PREDICTION(7),
    HOTSEAT_PREDICTION(8),
    SUGGESTED_LABEL(9),
    MANUAL_LABEL(10),
    UNLABELED(11),
    EMPTY_LABEL(12),
    ALL_APPS_SEARCH_RESULT_APPLICATION(13),
    ALL_APPS_SEARCH_RESULT_SHORTCUT(14),
    ALL_APPS_SEARCH_RESULT_PEOPLE(15),
    ALL_APPS_SEARCH_RESULT_ACTION(16),
    ALL_APPS_SEARCH_RESULT_SETTING(17),
    ALL_APPS_SEARCH_RESULT_SCREENSHOT(18),
    ALL_APPS_SEARCH_RESULT_SLICE(19),
    ALL_APPS_SEARCH_RESULT_WIDGETS(20),
    ALL_APPS_SEARCH_RESULT_PLAY(21),
    ALL_APPS_SEARCH_RESULT_PLAY_GMS(44),
    ALL_APPS_SEARCH_RESULT_FALLBACK(22),
    ALL_APPS_SEARCH_RESULT_ASSISTANT(23),
    ALL_APPS_SEARCH_RESULT_CHROMETAB(24),
    ALL_APPS_SEARCH_RESULT_NAVVYSITE(25),
    ALL_APPS_SEARCH_RESULT_TIPS(26),
    ALL_APPS_SEARCH_RESULT_PEOPLE_TILE(27),
    ALL_APPS_SEARCH_RESULT_LEGACY_SHORTCUT(30),
    ALL_APPS_SEARCH_RESULT_ASSISTANT_MEMORY(31),
    ALL_APPS_SEARCH_RESULT_VIDEO(41),
    ALL_APPS_SEARCH_RESULT_SYSTEM_POINTER(42),
    ALL_APPS_SEARCH_RESULT_EDUCARD(43),
    ALL_APPS_SEARCH_RESULT_LOCATION(50),
    ALL_APPS_SEARCH_RESULT_TEXT_HEADER(51),
    DATA_SOURCE_APPSEARCH_APP_PREVIEW(45),
    DATA_SOURCE_APPSEARCH_APP_SRP_PREVIEW(46),
    DATA_SOURCE_APPSEARCH_CATEGORY_SRP_PREVIEW(48),
    DATA_SOURCE_APPSEARCH_ENTITY_SRP_PREVIEW(49),
    DATA_SOURCE_AIAI_SEARCH_ROOT(47),
    ALL_APPS_SEARCH_RESULT_WEB_SUGGEST(39),
    WEB_SEARCH_RESULT_QUERY(32),
    WEB_SEARCH_RESULT_TRENDING(33),
    WEB_SEARCH_RESULT_ENTITY(34),
    WEB_SEARCH_RESULT_ANSWER(35),
    WEB_SEARCH_RESULT_PERSONAL(36),
    WEB_SEARCH_RESULT_CALCULATOR(37),
    WEB_SEARCH_RESULT_URL(38),
    WEB_SEARCH_RESULT_RICH_ANSWER(40),
    WIDGETS_BOTTOM_TRAY(28),
    WIDGETS_TRAY_PREDICTION(29);
    
    private final int value;

    /* loaded from: classes.dex */
    final class AttributeVerifier implements M {
        static final M INSTANCE = new AttributeVerifier();

        @Override // com.google.protobuf.M
        public final boolean isInRange(int i4) {
            return LauncherAtom$Attribute.forNumber(i4) != null;
        }
    }

    LauncherAtom$Attribute(int i4) {
        this.value = i4;
    }

    public static LauncherAtom$Attribute forNumber(int i4) {
        switch (i4) {
            case 0:
                return UNKNOWN;
            case 1:
                return DEFAULT_LAYOUT;
            case 2:
                return BACKUP_RESTORE;
            case 3:
                return PINITEM;
            case 4:
                return ALLAPPS_ATOZ;
            case 5:
                return WIDGETS;
            case 6:
                return ADD_TO_HOMESCREEN;
            case 7:
                return ALLAPPS_PREDICTION;
            case 8:
                return HOTSEAT_PREDICTION;
            case 9:
                return SUGGESTED_LABEL;
            case 10:
                return MANUAL_LABEL;
            case 11:
                return UNLABELED;
            case 12:
                return EMPTY_LABEL;
            case 13:
                return ALL_APPS_SEARCH_RESULT_APPLICATION;
            case 14:
                return ALL_APPS_SEARCH_RESULT_SHORTCUT;
            case 15:
                return ALL_APPS_SEARCH_RESULT_PEOPLE;
            case 16:
                return ALL_APPS_SEARCH_RESULT_ACTION;
            case 17:
                return ALL_APPS_SEARCH_RESULT_SETTING;
            case 18:
                return ALL_APPS_SEARCH_RESULT_SCREENSHOT;
            case 19:
                return ALL_APPS_SEARCH_RESULT_SLICE;
            case 20:
                return ALL_APPS_SEARCH_RESULT_WIDGETS;
            case 21:
                return ALL_APPS_SEARCH_RESULT_PLAY;
            case 22:
                return ALL_APPS_SEARCH_RESULT_FALLBACK;
            case 23:
                return ALL_APPS_SEARCH_RESULT_ASSISTANT;
            case 24:
                return ALL_APPS_SEARCH_RESULT_CHROMETAB;
            case 25:
                return ALL_APPS_SEARCH_RESULT_NAVVYSITE;
            case 26:
                return ALL_APPS_SEARCH_RESULT_TIPS;
            case 27:
                return ALL_APPS_SEARCH_RESULT_PEOPLE_TILE;
            case 28:
                return WIDGETS_BOTTOM_TRAY;
            case 29:
                return WIDGETS_TRAY_PREDICTION;
            case 30:
                return ALL_APPS_SEARCH_RESULT_LEGACY_SHORTCUT;
            case 31:
                return ALL_APPS_SEARCH_RESULT_ASSISTANT_MEMORY;
            case 32:
                return WEB_SEARCH_RESULT_QUERY;
            case 33:
                return WEB_SEARCH_RESULT_TRENDING;
            case 34:
                return WEB_SEARCH_RESULT_ENTITY;
            case 35:
                return WEB_SEARCH_RESULT_ANSWER;
            case 36:
                return WEB_SEARCH_RESULT_PERSONAL;
            case 37:
                return WEB_SEARCH_RESULT_CALCULATOR;
            case 38:
                return WEB_SEARCH_RESULT_URL;
            case 39:
                return ALL_APPS_SEARCH_RESULT_WEB_SUGGEST;
            case 40:
                return WEB_SEARCH_RESULT_RICH_ANSWER;
            case 41:
                return ALL_APPS_SEARCH_RESULT_VIDEO;
            case 42:
                return ALL_APPS_SEARCH_RESULT_SYSTEM_POINTER;
            case 43:
                return ALL_APPS_SEARCH_RESULT_EDUCARD;
            case 44:
                return ALL_APPS_SEARCH_RESULT_PLAY_GMS;
            case 45:
                return DATA_SOURCE_APPSEARCH_APP_PREVIEW;
            case 46:
                return DATA_SOURCE_APPSEARCH_APP_SRP_PREVIEW;
            case 47:
                return DATA_SOURCE_AIAI_SEARCH_ROOT;
            case 48:
                return DATA_SOURCE_APPSEARCH_CATEGORY_SRP_PREVIEW;
            case 49:
                return DATA_SOURCE_APPSEARCH_ENTITY_SRP_PREVIEW;
            case 50:
                return ALL_APPS_SEARCH_RESULT_LOCATION;
            case 51:
                return ALL_APPS_SEARCH_RESULT_TEXT_HEADER;
            default:
                return null;
        }
    }

    @Override // com.google.protobuf.L
    public final int getNumber() {
        return this.value;
    }
}
