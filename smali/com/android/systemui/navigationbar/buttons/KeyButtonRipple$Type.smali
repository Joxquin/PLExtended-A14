.class public final enum Lcom/android/systemui/navigationbar/buttons/KeyButtonRipple$Type;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field public static final enum d:Lcom/android/systemui/navigationbar/buttons/KeyButtonRipple$Type;

.field public static final enum e:Lcom/android/systemui/navigationbar/buttons/KeyButtonRipple$Type;

.field public static final synthetic f:[Lcom/android/systemui/navigationbar/buttons/KeyButtonRipple$Type;


# direct methods
.method public static constructor <clinit>()V
    .locals 4

    new-instance v0, Lcom/android/systemui/navigationbar/buttons/KeyButtonRipple$Type;

    const-string v1, "OVAL"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/android/systemui/navigationbar/buttons/KeyButtonRipple$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/systemui/navigationbar/buttons/KeyButtonRipple$Type;->d:Lcom/android/systemui/navigationbar/buttons/KeyButtonRipple$Type;

    new-instance v1, Lcom/android/systemui/navigationbar/buttons/KeyButtonRipple$Type;

    const-string v2, "ROUNDED_RECT"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lcom/android/systemui/navigationbar/buttons/KeyButtonRipple$Type;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/android/systemui/navigationbar/buttons/KeyButtonRipple$Type;->e:Lcom/android/systemui/navigationbar/buttons/KeyButtonRipple$Type;

    filled-new-array {v0, v1}, [Lcom/android/systemui/navigationbar/buttons/KeyButtonRipple$Type;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/navigationbar/buttons/KeyButtonRipple$Type;->f:[Lcom/android/systemui/navigationbar/buttons/KeyButtonRipple$Type;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/systemui/navigationbar/buttons/KeyButtonRipple$Type;
    .locals 1

    const-class v0, Lcom/android/systemui/navigationbar/buttons/KeyButtonRipple$Type;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/navigationbar/buttons/KeyButtonRipple$Type;

    return-object p0
.end method

.method public static values()[Lcom/android/systemui/navigationbar/buttons/KeyButtonRipple$Type;
    .locals 1

    sget-object v0, Lcom/android/systemui/navigationbar/buttons/KeyButtonRipple$Type;->f:[Lcom/android/systemui/navigationbar/buttons/KeyButtonRipple$Type;

    invoke-virtual {v0}, [Lcom/android/systemui/navigationbar/buttons/KeyButtonRipple$Type;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/systemui/navigationbar/buttons/KeyButtonRipple$Type;

    return-object v0
.end method
