.class final enum Lcom/android/quickstep/util/AnimatorControllerWithResistance$RecentsResistanceParams;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field private static final synthetic $VALUES:[Lcom/android/quickstep/util/AnimatorControllerWithResistance$RecentsResistanceParams;

.field public static final enum FROM_APP:Lcom/android/quickstep/util/AnimatorControllerWithResistance$RecentsResistanceParams;

.field public static final enum FROM_APP_TABLET:Lcom/android/quickstep/util/AnimatorControllerWithResistance$RecentsResistanceParams;

.field public static final enum FROM_APP_TO_ALL_APPS:Lcom/android/quickstep/util/AnimatorControllerWithResistance$RecentsResistanceParams;

.field public static final enum FROM_APP_TO_ALL_APPS_TABLET:Lcom/android/quickstep/util/AnimatorControllerWithResistance$RecentsResistanceParams;

.field public static final enum FROM_OVERVIEW:Lcom/android/quickstep/util/AnimatorControllerWithResistance$RecentsResistanceParams;


# instance fields
.field public final scaleMaxResist:F

.field public final scaleStartResist:F

.field public final stopScalingAtTop:Z

.field public final translationFactor:F


# direct methods
.method private static synthetic $values()[Lcom/android/quickstep/util/AnimatorControllerWithResistance$RecentsResistanceParams;
    .locals 5

    sget-object v0, Lcom/android/quickstep/util/AnimatorControllerWithResistance$RecentsResistanceParams;->FROM_APP:Lcom/android/quickstep/util/AnimatorControllerWithResistance$RecentsResistanceParams;

    sget-object v1, Lcom/android/quickstep/util/AnimatorControllerWithResistance$RecentsResistanceParams;->FROM_APP_TO_ALL_APPS:Lcom/android/quickstep/util/AnimatorControllerWithResistance$RecentsResistanceParams;

    sget-object v2, Lcom/android/quickstep/util/AnimatorControllerWithResistance$RecentsResistanceParams;->FROM_APP_TABLET:Lcom/android/quickstep/util/AnimatorControllerWithResistance$RecentsResistanceParams;

    sget-object v3, Lcom/android/quickstep/util/AnimatorControllerWithResistance$RecentsResistanceParams;->FROM_APP_TO_ALL_APPS_TABLET:Lcom/android/quickstep/util/AnimatorControllerWithResistance$RecentsResistanceParams;

    sget-object v4, Lcom/android/quickstep/util/AnimatorControllerWithResistance$RecentsResistanceParams;->FROM_OVERVIEW:Lcom/android/quickstep/util/AnimatorControllerWithResistance$RecentsResistanceParams;

    filled-new-array {v0, v1, v2, v3, v4}, [Lcom/android/quickstep/util/AnimatorControllerWithResistance$RecentsResistanceParams;

    move-result-object v0

    return-object v0
.end method

.method public static constructor <clinit>()V
    .locals 15

    new-instance v7, Lcom/android/quickstep/util/AnimatorControllerWithResistance$RecentsResistanceParams;

    const-string v1, "FROM_APP"

    const/4 v2, 0x0

    const/high16 v3, 0x3f400000    # 0.75f

    const/high16 v4, 0x3f000000    # 0.5f

    const/high16 v5, 0x3f800000    # 1.0f

    const/4 v6, 0x0

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Lcom/android/quickstep/util/AnimatorControllerWithResistance$RecentsResistanceParams;-><init>(Ljava/lang/String;IFFFZ)V

    sput-object v7, Lcom/android/quickstep/util/AnimatorControllerWithResistance$RecentsResistanceParams;->FROM_APP:Lcom/android/quickstep/util/AnimatorControllerWithResistance$RecentsResistanceParams;

    new-instance v0, Lcom/android/quickstep/util/AnimatorControllerWithResistance$RecentsResistanceParams;

    const-string v9, "FROM_APP_TO_ALL_APPS"

    const/4 v10, 0x1

    const/high16 v11, 0x3f800000    # 1.0f

    const v12, 0x3f19999a    # 0.6f

    const v13, 0x3f4ccccd    # 0.8f

    const/4 v14, 0x0

    move-object v8, v0

    invoke-direct/range {v8 .. v14}, Lcom/android/quickstep/util/AnimatorControllerWithResistance$RecentsResistanceParams;-><init>(Ljava/lang/String;IFFFZ)V

    sput-object v0, Lcom/android/quickstep/util/AnimatorControllerWithResistance$RecentsResistanceParams;->FROM_APP_TO_ALL_APPS:Lcom/android/quickstep/util/AnimatorControllerWithResistance$RecentsResistanceParams;

    new-instance v0, Lcom/android/quickstep/util/AnimatorControllerWithResistance$RecentsResistanceParams;

    const-string v2, "FROM_APP_TABLET"

    const/4 v3, 0x2

    const/high16 v4, 0x3f800000    # 1.0f

    const v5, 0x3f333333    # 0.7f

    const/high16 v6, 0x3f800000    # 1.0f

    const/4 v7, 0x1

    move-object v1, v0

    invoke-direct/range {v1 .. v7}, Lcom/android/quickstep/util/AnimatorControllerWithResistance$RecentsResistanceParams;-><init>(Ljava/lang/String;IFFFZ)V

    sput-object v0, Lcom/android/quickstep/util/AnimatorControllerWithResistance$RecentsResistanceParams;->FROM_APP_TABLET:Lcom/android/quickstep/util/AnimatorControllerWithResistance$RecentsResistanceParams;

    new-instance v0, Lcom/android/quickstep/util/AnimatorControllerWithResistance$RecentsResistanceParams;

    const-string v9, "FROM_APP_TO_ALL_APPS_TABLET"

    const/4 v10, 0x3

    const/high16 v12, 0x3f000000    # 0.5f

    const/high16 v13, 0x3f000000    # 0.5f

    move-object v8, v0

    invoke-direct/range {v8 .. v14}, Lcom/android/quickstep/util/AnimatorControllerWithResistance$RecentsResistanceParams;-><init>(Ljava/lang/String;IFFFZ)V

    sput-object v0, Lcom/android/quickstep/util/AnimatorControllerWithResistance$RecentsResistanceParams;->FROM_APP_TO_ALL_APPS_TABLET:Lcom/android/quickstep/util/AnimatorControllerWithResistance$RecentsResistanceParams;

    new-instance v0, Lcom/android/quickstep/util/AnimatorControllerWithResistance$RecentsResistanceParams;

    const-string v2, "FROM_OVERVIEW"

    const/4 v3, 0x4

    const/high16 v5, 0x3f400000    # 0.75f

    const/high16 v6, 0x3f000000    # 0.5f

    const/4 v7, 0x0

    move-object v1, v0

    invoke-direct/range {v1 .. v7}, Lcom/android/quickstep/util/AnimatorControllerWithResistance$RecentsResistanceParams;-><init>(Ljava/lang/String;IFFFZ)V

    sput-object v0, Lcom/android/quickstep/util/AnimatorControllerWithResistance$RecentsResistanceParams;->FROM_OVERVIEW:Lcom/android/quickstep/util/AnimatorControllerWithResistance$RecentsResistanceParams;

    invoke-static {}, Lcom/android/quickstep/util/AnimatorControllerWithResistance$RecentsResistanceParams;->$values()[Lcom/android/quickstep/util/AnimatorControllerWithResistance$RecentsResistanceParams;

    move-result-object v0

    sput-object v0, Lcom/android/quickstep/util/AnimatorControllerWithResistance$RecentsResistanceParams;->$VALUES:[Lcom/android/quickstep/util/AnimatorControllerWithResistance$RecentsResistanceParams;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IFFFZ)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/android/quickstep/util/AnimatorControllerWithResistance$RecentsResistanceParams;->scaleStartResist:F

    iput p4, p0, Lcom/android/quickstep/util/AnimatorControllerWithResistance$RecentsResistanceParams;->scaleMaxResist:F

    iput p5, p0, Lcom/android/quickstep/util/AnimatorControllerWithResistance$RecentsResistanceParams;->translationFactor:F

    iput-boolean p6, p0, Lcom/android/quickstep/util/AnimatorControllerWithResistance$RecentsResistanceParams;->stopScalingAtTop:Z

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/quickstep/util/AnimatorControllerWithResistance$RecentsResistanceParams;
    .locals 1

    const-class v0, Lcom/android/quickstep/util/AnimatorControllerWithResistance$RecentsResistanceParams;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/android/quickstep/util/AnimatorControllerWithResistance$RecentsResistanceParams;

    return-object p0
.end method

.method public static values()[Lcom/android/quickstep/util/AnimatorControllerWithResistance$RecentsResistanceParams;
    .locals 1

    sget-object v0, Lcom/android/quickstep/util/AnimatorControllerWithResistance$RecentsResistanceParams;->$VALUES:[Lcom/android/quickstep/util/AnimatorControllerWithResistance$RecentsResistanceParams;

    invoke-virtual {v0}, [Lcom/android/quickstep/util/AnimatorControllerWithResistance$RecentsResistanceParams;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/quickstep/util/AnimatorControllerWithResistance$RecentsResistanceParams;

    return-object v0
.end method
