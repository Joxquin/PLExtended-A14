.class public final enum Lcom/android/launcher3/logger/LauncherAtom$AllAppsContainer$ParentContainerCase;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field private static final synthetic $VALUES:[Lcom/android/launcher3/logger/LauncherAtom$AllAppsContainer$ParentContainerCase;

.field public static final enum PARENTCONTAINER_NOT_SET:Lcom/android/launcher3/logger/LauncherAtom$AllAppsContainer$ParentContainerCase;

.field public static final enum TASKBAR_CONTAINER:Lcom/android/launcher3/logger/LauncherAtom$AllAppsContainer$ParentContainerCase;


# instance fields
.field private final value:I


# direct methods
.method public static constructor <clinit>()V
    .locals 5

    new-instance v0, Lcom/android/launcher3/logger/LauncherAtom$AllAppsContainer$ParentContainerCase;

    const-string v1, "TASKBAR_CONTAINER"

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/android/launcher3/logger/LauncherAtom$AllAppsContainer$ParentContainerCase;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/launcher3/logger/LauncherAtom$AllAppsContainer$ParentContainerCase;->TASKBAR_CONTAINER:Lcom/android/launcher3/logger/LauncherAtom$AllAppsContainer$ParentContainerCase;

    new-instance v1, Lcom/android/launcher3/logger/LauncherAtom$AllAppsContainer$ParentContainerCase;

    const-string v4, "PARENTCONTAINER_NOT_SET"

    invoke-direct {v1, v4, v3, v2}, Lcom/android/launcher3/logger/LauncherAtom$AllAppsContainer$ParentContainerCase;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/android/launcher3/logger/LauncherAtom$AllAppsContainer$ParentContainerCase;->PARENTCONTAINER_NOT_SET:Lcom/android/launcher3/logger/LauncherAtom$AllAppsContainer$ParentContainerCase;

    filled-new-array {v0, v1}, [Lcom/android/launcher3/logger/LauncherAtom$AllAppsContainer$ParentContainerCase;

    move-result-object v0

    sput-object v0, Lcom/android/launcher3/logger/LauncherAtom$AllAppsContainer$ParentContainerCase;->$VALUES:[Lcom/android/launcher3/logger/LauncherAtom$AllAppsContainer$ParentContainerCase;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/android/launcher3/logger/LauncherAtom$AllAppsContainer$ParentContainerCase;->value:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/launcher3/logger/LauncherAtom$AllAppsContainer$ParentContainerCase;
    .locals 1

    const-class v0, Lcom/android/launcher3/logger/LauncherAtom$AllAppsContainer$ParentContainerCase;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/android/launcher3/logger/LauncherAtom$AllAppsContainer$ParentContainerCase;

    return-object p0
.end method

.method public static values()[Lcom/android/launcher3/logger/LauncherAtom$AllAppsContainer$ParentContainerCase;
    .locals 1

    sget-object v0, Lcom/android/launcher3/logger/LauncherAtom$AllAppsContainer$ParentContainerCase;->$VALUES:[Lcom/android/launcher3/logger/LauncherAtom$AllAppsContainer$ParentContainerCase;

    invoke-virtual {v0}, [Lcom/android/launcher3/logger/LauncherAtom$AllAppsContainer$ParentContainerCase;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/launcher3/logger/LauncherAtom$AllAppsContainer$ParentContainerCase;

    return-object v0
.end method


# virtual methods
.method public final getNumber()I
    .locals 0

    iget p0, p0, Lcom/android/launcher3/logger/LauncherAtom$AllAppsContainer$ParentContainerCase;->value:I

    return p0
.end method
