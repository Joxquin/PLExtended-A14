.class final enum Lcom/google/android/apps/nexuslauncher/allapps/UniversalSearchInputView$QsbState;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field public static final enum d:Lcom/google/android/apps/nexuslauncher/allapps/UniversalSearchInputView$QsbState;

.field public static final enum e:Lcom/google/android/apps/nexuslauncher/allapps/UniversalSearchInputView$QsbState;

.field public static final enum f:Lcom/google/android/apps/nexuslauncher/allapps/UniversalSearchInputView$QsbState;

.field public static final synthetic g:[Lcom/google/android/apps/nexuslauncher/allapps/UniversalSearchInputView$QsbState;


# instance fields
.field public final isExpanded:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 6

    new-instance v0, Lcom/google/android/apps/nexuslauncher/allapps/UniversalSearchInputView$QsbState;

    const-string v1, "ZERO_UNFOCUSED"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/google/android/apps/nexuslauncher/allapps/UniversalSearchInputView$QsbState;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lcom/google/android/apps/nexuslauncher/allapps/UniversalSearchInputView$QsbState;->d:Lcom/google/android/apps/nexuslauncher/allapps/UniversalSearchInputView$QsbState;

    new-instance v1, Lcom/google/android/apps/nexuslauncher/allapps/UniversalSearchInputView$QsbState;

    const-string v2, "ZERO_FOCUSED"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3, v3}, Lcom/google/android/apps/nexuslauncher/allapps/UniversalSearchInputView$QsbState;-><init>(Ljava/lang/String;IZ)V

    sput-object v1, Lcom/google/android/apps/nexuslauncher/allapps/UniversalSearchInputView$QsbState;->e:Lcom/google/android/apps/nexuslauncher/allapps/UniversalSearchInputView$QsbState;

    new-instance v2, Lcom/google/android/apps/nexuslauncher/allapps/UniversalSearchInputView$QsbState;

    const-string v4, "PREFIX"

    const/4 v5, 0x2

    invoke-direct {v2, v4, v5, v3}, Lcom/google/android/apps/nexuslauncher/allapps/UniversalSearchInputView$QsbState;-><init>(Ljava/lang/String;IZ)V

    sput-object v2, Lcom/google/android/apps/nexuslauncher/allapps/UniversalSearchInputView$QsbState;->f:Lcom/google/android/apps/nexuslauncher/allapps/UniversalSearchInputView$QsbState;

    filled-new-array {v0, v1, v2}, [Lcom/google/android/apps/nexuslauncher/allapps/UniversalSearchInputView$QsbState;

    move-result-object v0

    sput-object v0, Lcom/google/android/apps/nexuslauncher/allapps/UniversalSearchInputView$QsbState;->g:[Lcom/google/android/apps/nexuslauncher/allapps/UniversalSearchInputView$QsbState;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;IZ)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-boolean p3, p0, Lcom/google/android/apps/nexuslauncher/allapps/UniversalSearchInputView$QsbState;->isExpanded:Z

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/android/apps/nexuslauncher/allapps/UniversalSearchInputView$QsbState;
    .locals 1

    const-class v0, Lcom/google/android/apps/nexuslauncher/allapps/UniversalSearchInputView$QsbState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/google/android/apps/nexuslauncher/allapps/UniversalSearchInputView$QsbState;

    return-object p0
.end method

.method public static values()[Lcom/google/android/apps/nexuslauncher/allapps/UniversalSearchInputView$QsbState;
    .locals 1

    sget-object v0, Lcom/google/android/apps/nexuslauncher/allapps/UniversalSearchInputView$QsbState;->g:[Lcom/google/android/apps/nexuslauncher/allapps/UniversalSearchInputView$QsbState;

    invoke-virtual {v0}, [Lcom/google/android/apps/nexuslauncher/allapps/UniversalSearchInputView$QsbState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/apps/nexuslauncher/allapps/UniversalSearchInputView$QsbState;

    return-object v0
.end method
