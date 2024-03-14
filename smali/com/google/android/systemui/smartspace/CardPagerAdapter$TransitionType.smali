.class public final enum Lcom/google/android/systemui/smartspace/CardPagerAdapter$TransitionType;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field public static final enum d:Lcom/google/android/systemui/smartspace/CardPagerAdapter$TransitionType;

.field public static final enum e:Lcom/google/android/systemui/smartspace/CardPagerAdapter$TransitionType;

.field public static final enum f:Lcom/google/android/systemui/smartspace/CardPagerAdapter$TransitionType;

.field public static final synthetic g:[Lcom/google/android/systemui/smartspace/CardPagerAdapter$TransitionType;


# direct methods
.method public static constructor <clinit>()V
    .locals 5

    new-instance v0, Lcom/google/android/systemui/smartspace/CardPagerAdapter$TransitionType;

    const-string v1, "NOT_IN_TRANSITION"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/google/android/systemui/smartspace/CardPagerAdapter$TransitionType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/systemui/smartspace/CardPagerAdapter$TransitionType;->d:Lcom/google/android/systemui/smartspace/CardPagerAdapter$TransitionType;

    new-instance v1, Lcom/google/android/systemui/smartspace/CardPagerAdapter$TransitionType;

    const-string v2, "TO_LOCKSCREEN"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lcom/google/android/systemui/smartspace/CardPagerAdapter$TransitionType;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/google/android/systemui/smartspace/CardPagerAdapter$TransitionType;->e:Lcom/google/android/systemui/smartspace/CardPagerAdapter$TransitionType;

    new-instance v2, Lcom/google/android/systemui/smartspace/CardPagerAdapter$TransitionType;

    const-string v3, "TO_AOD"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Lcom/google/android/systemui/smartspace/CardPagerAdapter$TransitionType;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lcom/google/android/systemui/smartspace/CardPagerAdapter$TransitionType;->f:Lcom/google/android/systemui/smartspace/CardPagerAdapter$TransitionType;

    filled-new-array {v0, v1, v2}, [Lcom/google/android/systemui/smartspace/CardPagerAdapter$TransitionType;

    move-result-object v0

    sput-object v0, Lcom/google/android/systemui/smartspace/CardPagerAdapter$TransitionType;->g:[Lcom/google/android/systemui/smartspace/CardPagerAdapter$TransitionType;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/android/systemui/smartspace/CardPagerAdapter$TransitionType;
    .locals 1

    const-class v0, Lcom/google/android/systemui/smartspace/CardPagerAdapter$TransitionType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/google/android/systemui/smartspace/CardPagerAdapter$TransitionType;

    return-object p0
.end method

.method public static values()[Lcom/google/android/systemui/smartspace/CardPagerAdapter$TransitionType;
    .locals 1

    sget-object v0, Lcom/google/android/systemui/smartspace/CardPagerAdapter$TransitionType;->g:[Lcom/google/android/systemui/smartspace/CardPagerAdapter$TransitionType;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/systemui/smartspace/CardPagerAdapter$TransitionType;

    return-object v0
.end method
