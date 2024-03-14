.class public final enum Lcom/android/launcher3/logger/LauncherAtom$ItemInfo$ItemCase;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field private static final synthetic $VALUES:[Lcom/android/launcher3/logger/LauncherAtom$ItemInfo$ItemCase;

.field public static final enum APPLICATION:Lcom/android/launcher3/logger/LauncherAtom$ItemInfo$ItemCase;

.field public static final enum FOLDER_ICON:Lcom/android/launcher3/logger/LauncherAtom$ItemInfo$ItemCase;

.field public static final enum ITEM_NOT_SET:Lcom/android/launcher3/logger/LauncherAtom$ItemInfo$ItemCase;

.field public static final enum SEARCH_ACTION_ITEM:Lcom/android/launcher3/logger/LauncherAtom$ItemInfo$ItemCase;

.field public static final enum SHORTCUT:Lcom/android/launcher3/logger/LauncherAtom$ItemInfo$ItemCase;

.field public static final enum SLICE:Lcom/android/launcher3/logger/LauncherAtom$ItemInfo$ItemCase;

.field public static final enum TASK:Lcom/android/launcher3/logger/LauncherAtom$ItemInfo$ItemCase;

.field public static final enum WIDGET:Lcom/android/launcher3/logger/LauncherAtom$ItemInfo$ItemCase;


# instance fields
.field private final value:I


# direct methods
.method public static constructor <clinit>()V
    .locals 11

    new-instance v0, Lcom/android/launcher3/logger/LauncherAtom$ItemInfo$ItemCase;

    const-string v1, "APPLICATION"

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/android/launcher3/logger/LauncherAtom$ItemInfo$ItemCase;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/launcher3/logger/LauncherAtom$ItemInfo$ItemCase;->APPLICATION:Lcom/android/launcher3/logger/LauncherAtom$ItemInfo$ItemCase;

    new-instance v1, Lcom/android/launcher3/logger/LauncherAtom$ItemInfo$ItemCase;

    const-string v4, "TASK"

    const/4 v5, 0x2

    invoke-direct {v1, v4, v3, v5}, Lcom/android/launcher3/logger/LauncherAtom$ItemInfo$ItemCase;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/android/launcher3/logger/LauncherAtom$ItemInfo$ItemCase;->TASK:Lcom/android/launcher3/logger/LauncherAtom$ItemInfo$ItemCase;

    new-instance v3, Lcom/android/launcher3/logger/LauncherAtom$ItemInfo$ItemCase;

    const-string v4, "SHORTCUT"

    const/4 v6, 0x3

    invoke-direct {v3, v4, v5, v6}, Lcom/android/launcher3/logger/LauncherAtom$ItemInfo$ItemCase;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lcom/android/launcher3/logger/LauncherAtom$ItemInfo$ItemCase;->SHORTCUT:Lcom/android/launcher3/logger/LauncherAtom$ItemInfo$ItemCase;

    new-instance v4, Lcom/android/launcher3/logger/LauncherAtom$ItemInfo$ItemCase;

    const-string v5, "WIDGET"

    const/4 v7, 0x4

    invoke-direct {v4, v5, v6, v7}, Lcom/android/launcher3/logger/LauncherAtom$ItemInfo$ItemCase;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lcom/android/launcher3/logger/LauncherAtom$ItemInfo$ItemCase;->WIDGET:Lcom/android/launcher3/logger/LauncherAtom$ItemInfo$ItemCase;

    new-instance v5, Lcom/android/launcher3/logger/LauncherAtom$ItemInfo$ItemCase;

    const-string v6, "FOLDER_ICON"

    const/16 v8, 0x9

    invoke-direct {v5, v6, v7, v8}, Lcom/android/launcher3/logger/LauncherAtom$ItemInfo$ItemCase;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lcom/android/launcher3/logger/LauncherAtom$ItemInfo$ItemCase;->FOLDER_ICON:Lcom/android/launcher3/logger/LauncherAtom$ItemInfo$ItemCase;

    new-instance v6, Lcom/android/launcher3/logger/LauncherAtom$ItemInfo$ItemCase;

    const/4 v7, 0x5

    const/16 v8, 0xa

    const-string v9, "SLICE"

    invoke-direct {v6, v9, v7, v8}, Lcom/android/launcher3/logger/LauncherAtom$ItemInfo$ItemCase;-><init>(Ljava/lang/String;II)V

    sput-object v6, Lcom/android/launcher3/logger/LauncherAtom$ItemInfo$ItemCase;->SLICE:Lcom/android/launcher3/logger/LauncherAtom$ItemInfo$ItemCase;

    new-instance v7, Lcom/android/launcher3/logger/LauncherAtom$ItemInfo$ItemCase;

    const/4 v8, 0x6

    const/16 v9, 0xb

    const-string v10, "SEARCH_ACTION_ITEM"

    invoke-direct {v7, v10, v8, v9}, Lcom/android/launcher3/logger/LauncherAtom$ItemInfo$ItemCase;-><init>(Ljava/lang/String;II)V

    sput-object v7, Lcom/android/launcher3/logger/LauncherAtom$ItemInfo$ItemCase;->SEARCH_ACTION_ITEM:Lcom/android/launcher3/logger/LauncherAtom$ItemInfo$ItemCase;

    new-instance v8, Lcom/android/launcher3/logger/LauncherAtom$ItemInfo$ItemCase;

    const-string v9, "ITEM_NOT_SET"

    const/4 v10, 0x7

    invoke-direct {v8, v9, v10, v2}, Lcom/android/launcher3/logger/LauncherAtom$ItemInfo$ItemCase;-><init>(Ljava/lang/String;II)V

    sput-object v8, Lcom/android/launcher3/logger/LauncherAtom$ItemInfo$ItemCase;->ITEM_NOT_SET:Lcom/android/launcher3/logger/LauncherAtom$ItemInfo$ItemCase;

    move-object v2, v3

    move-object v3, v4

    move-object v4, v5

    move-object v5, v6

    move-object v6, v7

    move-object v7, v8

    filled-new-array/range {v0 .. v7}, [Lcom/android/launcher3/logger/LauncherAtom$ItemInfo$ItemCase;

    move-result-object v0

    sput-object v0, Lcom/android/launcher3/logger/LauncherAtom$ItemInfo$ItemCase;->$VALUES:[Lcom/android/launcher3/logger/LauncherAtom$ItemInfo$ItemCase;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/android/launcher3/logger/LauncherAtom$ItemInfo$ItemCase;->value:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/launcher3/logger/LauncherAtom$ItemInfo$ItemCase;
    .locals 1

    const-class v0, Lcom/android/launcher3/logger/LauncherAtom$ItemInfo$ItemCase;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/android/launcher3/logger/LauncherAtom$ItemInfo$ItemCase;

    return-object p0
.end method

.method public static values()[Lcom/android/launcher3/logger/LauncherAtom$ItemInfo$ItemCase;
    .locals 1

    sget-object v0, Lcom/android/launcher3/logger/LauncherAtom$ItemInfo$ItemCase;->$VALUES:[Lcom/android/launcher3/logger/LauncherAtom$ItemInfo$ItemCase;

    invoke-virtual {v0}, [Lcom/android/launcher3/logger/LauncherAtom$ItemInfo$ItemCase;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/launcher3/logger/LauncherAtom$ItemInfo$ItemCase;

    return-object v0
.end method


# virtual methods
.method public final getNumber()I
    .locals 0

    iget p0, p0, Lcom/android/launcher3/logger/LauncherAtom$ItemInfo$ItemCase;->value:I

    return p0
.end method
