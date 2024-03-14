.class public final enum Lcom/android/launcher3/logger/LauncherAtom$SearchResultContainer$ParentContainerCase;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field private static final synthetic $VALUES:[Lcom/android/launcher3/logger/LauncherAtom$SearchResultContainer$ParentContainerCase;

.field public static final enum ALL_APPS_CONTAINER:Lcom/android/launcher3/logger/LauncherAtom$SearchResultContainer$ParentContainerCase;

.field public static final enum PARENTCONTAINER_NOT_SET:Lcom/android/launcher3/logger/LauncherAtom$SearchResultContainer$ParentContainerCase;

.field public static final enum WORKSPACE:Lcom/android/launcher3/logger/LauncherAtom$SearchResultContainer$ParentContainerCase;


# instance fields
.field private final value:I


# direct methods
.method public static constructor <clinit>()V
    .locals 7

    new-instance v0, Lcom/android/launcher3/logger/LauncherAtom$SearchResultContainer$ParentContainerCase;

    const-string v1, "WORKSPACE"

    const/4 v2, 0x0

    const/4 v3, 0x2

    invoke-direct {v0, v1, v2, v3}, Lcom/android/launcher3/logger/LauncherAtom$SearchResultContainer$ParentContainerCase;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/launcher3/logger/LauncherAtom$SearchResultContainer$ParentContainerCase;->WORKSPACE:Lcom/android/launcher3/logger/LauncherAtom$SearchResultContainer$ParentContainerCase;

    new-instance v1, Lcom/android/launcher3/logger/LauncherAtom$SearchResultContainer$ParentContainerCase;

    const/4 v4, 0x1

    const/4 v5, 0x3

    const-string v6, "ALL_APPS_CONTAINER"

    invoke-direct {v1, v6, v4, v5}, Lcom/android/launcher3/logger/LauncherAtom$SearchResultContainer$ParentContainerCase;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/android/launcher3/logger/LauncherAtom$SearchResultContainer$ParentContainerCase;->ALL_APPS_CONTAINER:Lcom/android/launcher3/logger/LauncherAtom$SearchResultContainer$ParentContainerCase;

    new-instance v4, Lcom/android/launcher3/logger/LauncherAtom$SearchResultContainer$ParentContainerCase;

    const-string v5, "PARENTCONTAINER_NOT_SET"

    invoke-direct {v4, v5, v3, v2}, Lcom/android/launcher3/logger/LauncherAtom$SearchResultContainer$ParentContainerCase;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lcom/android/launcher3/logger/LauncherAtom$SearchResultContainer$ParentContainerCase;->PARENTCONTAINER_NOT_SET:Lcom/android/launcher3/logger/LauncherAtom$SearchResultContainer$ParentContainerCase;

    filled-new-array {v0, v1, v4}, [Lcom/android/launcher3/logger/LauncherAtom$SearchResultContainer$ParentContainerCase;

    move-result-object v0

    sput-object v0, Lcom/android/launcher3/logger/LauncherAtom$SearchResultContainer$ParentContainerCase;->$VALUES:[Lcom/android/launcher3/logger/LauncherAtom$SearchResultContainer$ParentContainerCase;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/android/launcher3/logger/LauncherAtom$SearchResultContainer$ParentContainerCase;->value:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/launcher3/logger/LauncherAtom$SearchResultContainer$ParentContainerCase;
    .locals 1

    const-class v0, Lcom/android/launcher3/logger/LauncherAtom$SearchResultContainer$ParentContainerCase;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/android/launcher3/logger/LauncherAtom$SearchResultContainer$ParentContainerCase;

    return-object p0
.end method

.method public static values()[Lcom/android/launcher3/logger/LauncherAtom$SearchResultContainer$ParentContainerCase;
    .locals 1

    sget-object v0, Lcom/android/launcher3/logger/LauncherAtom$SearchResultContainer$ParentContainerCase;->$VALUES:[Lcom/android/launcher3/logger/LauncherAtom$SearchResultContainer$ParentContainerCase;

    invoke-virtual {v0}, [Lcom/android/launcher3/logger/LauncherAtom$SearchResultContainer$ParentContainerCase;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/launcher3/logger/LauncherAtom$SearchResultContainer$ParentContainerCase;

    return-object v0
.end method


# virtual methods
.method public final getNumber()I
    .locals 0

    iget p0, p0, Lcom/android/launcher3/logger/LauncherAtom$SearchResultContainer$ParentContainerCase;->value:I

    return p0
.end method
