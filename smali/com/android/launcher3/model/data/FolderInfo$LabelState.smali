.class public final enum Lcom/android/launcher3/model/data/FolderInfo$LabelState;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field private static final synthetic $VALUES:[Lcom/android/launcher3/model/data/FolderInfo$LabelState;

.field public static final enum EMPTY:Lcom/android/launcher3/model/data/FolderInfo$LabelState;

.field public static final enum MANUAL:Lcom/android/launcher3/model/data/FolderInfo$LabelState;

.field public static final enum SUGGESTED:Lcom/android/launcher3/model/data/FolderInfo$LabelState;

.field public static final enum UNLABELED:Lcom/android/launcher3/model/data/FolderInfo$LabelState;


# instance fields
.field private final mLogAttribute:Lcom/android/launcher3/logger/LauncherAtom$Attribute;


# direct methods
.method public static constructor <clinit>()V
    .locals 7

    new-instance v0, Lcom/android/launcher3/model/data/FolderInfo$LabelState;

    sget-object v1, Lcom/android/launcher3/logger/LauncherAtom$Attribute;->UNLABELED:Lcom/android/launcher3/logger/LauncherAtom$Attribute;

    const-string v2, "UNLABELED"

    const/4 v3, 0x0

    invoke-direct {v0, v2, v3, v1}, Lcom/android/launcher3/model/data/FolderInfo$LabelState;-><init>(Ljava/lang/String;ILcom/android/launcher3/logger/LauncherAtom$Attribute;)V

    sput-object v0, Lcom/android/launcher3/model/data/FolderInfo$LabelState;->UNLABELED:Lcom/android/launcher3/model/data/FolderInfo$LabelState;

    new-instance v1, Lcom/android/launcher3/model/data/FolderInfo$LabelState;

    sget-object v2, Lcom/android/launcher3/logger/LauncherAtom$Attribute;->EMPTY_LABEL:Lcom/android/launcher3/logger/LauncherAtom$Attribute;

    const-string v3, "EMPTY"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4, v2}, Lcom/android/launcher3/model/data/FolderInfo$LabelState;-><init>(Ljava/lang/String;ILcom/android/launcher3/logger/LauncherAtom$Attribute;)V

    sput-object v1, Lcom/android/launcher3/model/data/FolderInfo$LabelState;->EMPTY:Lcom/android/launcher3/model/data/FolderInfo$LabelState;

    new-instance v2, Lcom/android/launcher3/model/data/FolderInfo$LabelState;

    sget-object v3, Lcom/android/launcher3/logger/LauncherAtom$Attribute;->SUGGESTED_LABEL:Lcom/android/launcher3/logger/LauncherAtom$Attribute;

    const-string v4, "SUGGESTED"

    const/4 v5, 0x2

    invoke-direct {v2, v4, v5, v3}, Lcom/android/launcher3/model/data/FolderInfo$LabelState;-><init>(Ljava/lang/String;ILcom/android/launcher3/logger/LauncherAtom$Attribute;)V

    sput-object v2, Lcom/android/launcher3/model/data/FolderInfo$LabelState;->SUGGESTED:Lcom/android/launcher3/model/data/FolderInfo$LabelState;

    new-instance v3, Lcom/android/launcher3/model/data/FolderInfo$LabelState;

    sget-object v4, Lcom/android/launcher3/logger/LauncherAtom$Attribute;->MANUAL_LABEL:Lcom/android/launcher3/logger/LauncherAtom$Attribute;

    const-string v5, "MANUAL"

    const/4 v6, 0x3

    invoke-direct {v3, v5, v6, v4}, Lcom/android/launcher3/model/data/FolderInfo$LabelState;-><init>(Ljava/lang/String;ILcom/android/launcher3/logger/LauncherAtom$Attribute;)V

    sput-object v3, Lcom/android/launcher3/model/data/FolderInfo$LabelState;->MANUAL:Lcom/android/launcher3/model/data/FolderInfo$LabelState;

    filled-new-array {v0, v1, v2, v3}, [Lcom/android/launcher3/model/data/FolderInfo$LabelState;

    move-result-object v0

    sput-object v0, Lcom/android/launcher3/model/data/FolderInfo$LabelState;->$VALUES:[Lcom/android/launcher3/model/data/FolderInfo$LabelState;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILcom/android/launcher3/logger/LauncherAtom$Attribute;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lcom/android/launcher3/model/data/FolderInfo$LabelState;->mLogAttribute:Lcom/android/launcher3/logger/LauncherAtom$Attribute;

    return-void
.end method

.method public static bridge synthetic a(Lcom/android/launcher3/model/data/FolderInfo$LabelState;)Lcom/android/launcher3/logger/LauncherAtom$Attribute;
    .locals 0

    iget-object p0, p0, Lcom/android/launcher3/model/data/FolderInfo$LabelState;->mLogAttribute:Lcom/android/launcher3/logger/LauncherAtom$Attribute;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/launcher3/model/data/FolderInfo$LabelState;
    .locals 1

    const-class v0, Lcom/android/launcher3/model/data/FolderInfo$LabelState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/android/launcher3/model/data/FolderInfo$LabelState;

    return-object p0
.end method

.method public static values()[Lcom/android/launcher3/model/data/FolderInfo$LabelState;
    .locals 1

    sget-object v0, Lcom/android/launcher3/model/data/FolderInfo$LabelState;->$VALUES:[Lcom/android/launcher3/model/data/FolderInfo$LabelState;

    invoke-virtual {v0}, [Lcom/android/launcher3/model/data/FolderInfo$LabelState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/launcher3/model/data/FolderInfo$LabelState;

    return-object v0
.end method
