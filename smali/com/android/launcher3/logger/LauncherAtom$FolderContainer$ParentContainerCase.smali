.class public final enum Lcom/android/launcher3/logger/LauncherAtom$FolderContainer$ParentContainerCase;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field private static final synthetic $VALUES:[Lcom/android/launcher3/logger/LauncherAtom$FolderContainer$ParentContainerCase;

.field public static final enum HOTSEAT:Lcom/android/launcher3/logger/LauncherAtom$FolderContainer$ParentContainerCase;

.field public static final enum PARENTCONTAINER_NOT_SET:Lcom/android/launcher3/logger/LauncherAtom$FolderContainer$ParentContainerCase;

.field public static final enum TASKBAR:Lcom/android/launcher3/logger/LauncherAtom$FolderContainer$ParentContainerCase;

.field public static final enum WORKSPACE:Lcom/android/launcher3/logger/LauncherAtom$FolderContainer$ParentContainerCase;


# instance fields
.field private final value:I


# direct methods
.method public static constructor <clinit>()V
    .locals 7

    new-instance v0, Lcom/android/launcher3/logger/LauncherAtom$FolderContainer$ParentContainerCase;

    const/4 v1, 0x4

    const-string v2, "WORKSPACE"

    const/4 v3, 0x0

    invoke-direct {v0, v2, v3, v1}, Lcom/android/launcher3/logger/LauncherAtom$FolderContainer$ParentContainerCase;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/launcher3/logger/LauncherAtom$FolderContainer$ParentContainerCase;->WORKSPACE:Lcom/android/launcher3/logger/LauncherAtom$FolderContainer$ParentContainerCase;

    new-instance v1, Lcom/android/launcher3/logger/LauncherAtom$FolderContainer$ParentContainerCase;

    const/4 v2, 0x1

    const/4 v4, 0x5

    const-string v5, "HOTSEAT"

    invoke-direct {v1, v5, v2, v4}, Lcom/android/launcher3/logger/LauncherAtom$FolderContainer$ParentContainerCase;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/android/launcher3/logger/LauncherAtom$FolderContainer$ParentContainerCase;->HOTSEAT:Lcom/android/launcher3/logger/LauncherAtom$FolderContainer$ParentContainerCase;

    new-instance v2, Lcom/android/launcher3/logger/LauncherAtom$FolderContainer$ParentContainerCase;

    const/4 v4, 0x2

    const/4 v5, 0x6

    const-string v6, "TASKBAR"

    invoke-direct {v2, v6, v4, v5}, Lcom/android/launcher3/logger/LauncherAtom$FolderContainer$ParentContainerCase;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcom/android/launcher3/logger/LauncherAtom$FolderContainer$ParentContainerCase;->TASKBAR:Lcom/android/launcher3/logger/LauncherAtom$FolderContainer$ParentContainerCase;

    new-instance v4, Lcom/android/launcher3/logger/LauncherAtom$FolderContainer$ParentContainerCase;

    const-string v5, "PARENTCONTAINER_NOT_SET"

    const/4 v6, 0x3

    invoke-direct {v4, v5, v6, v3}, Lcom/android/launcher3/logger/LauncherAtom$FolderContainer$ParentContainerCase;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lcom/android/launcher3/logger/LauncherAtom$FolderContainer$ParentContainerCase;->PARENTCONTAINER_NOT_SET:Lcom/android/launcher3/logger/LauncherAtom$FolderContainer$ParentContainerCase;

    filled-new-array {v0, v1, v2, v4}, [Lcom/android/launcher3/logger/LauncherAtom$FolderContainer$ParentContainerCase;

    move-result-object v0

    sput-object v0, Lcom/android/launcher3/logger/LauncherAtom$FolderContainer$ParentContainerCase;->$VALUES:[Lcom/android/launcher3/logger/LauncherAtom$FolderContainer$ParentContainerCase;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/android/launcher3/logger/LauncherAtom$FolderContainer$ParentContainerCase;->value:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/launcher3/logger/LauncherAtom$FolderContainer$ParentContainerCase;
    .locals 1

    const-class v0, Lcom/android/launcher3/logger/LauncherAtom$FolderContainer$ParentContainerCase;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/android/launcher3/logger/LauncherAtom$FolderContainer$ParentContainerCase;

    return-object p0
.end method

.method public static values()[Lcom/android/launcher3/logger/LauncherAtom$FolderContainer$ParentContainerCase;
    .locals 1

    sget-object v0, Lcom/android/launcher3/logger/LauncherAtom$FolderContainer$ParentContainerCase;->$VALUES:[Lcom/android/launcher3/logger/LauncherAtom$FolderContainer$ParentContainerCase;

    invoke-virtual {v0}, [Lcom/android/launcher3/logger/LauncherAtom$FolderContainer$ParentContainerCase;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/launcher3/logger/LauncherAtom$FolderContainer$ParentContainerCase;

    return-object v0
.end method


# virtual methods
.method public final getNumber()I
    .locals 0

    iget p0, p0, Lcom/android/launcher3/logger/LauncherAtom$FolderContainer$ParentContainerCase;->value:I

    return p0
.end method
