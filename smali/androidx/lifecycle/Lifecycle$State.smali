.class public final enum Landroidx/lifecycle/Lifecycle$State;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field public static final enum d:Landroidx/lifecycle/Lifecycle$State;

.field public static final enum e:Landroidx/lifecycle/Lifecycle$State;

.field public static final enum f:Landroidx/lifecycle/Lifecycle$State;

.field public static final enum g:Landroidx/lifecycle/Lifecycle$State;

.field public static final enum h:Landroidx/lifecycle/Lifecycle$State;

.field public static final synthetic i:[Landroidx/lifecycle/Lifecycle$State;


# direct methods
.method public static constructor <clinit>()V
    .locals 7

    new-instance v0, Landroidx/lifecycle/Lifecycle$State;

    const-string v1, "DESTROYED"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroidx/lifecycle/Lifecycle$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroidx/lifecycle/Lifecycle$State;->d:Landroidx/lifecycle/Lifecycle$State;

    new-instance v1, Landroidx/lifecycle/Lifecycle$State;

    const-string v2, "INITIALIZED"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Landroidx/lifecycle/Lifecycle$State;-><init>(Ljava/lang/String;I)V

    sput-object v1, Landroidx/lifecycle/Lifecycle$State;->e:Landroidx/lifecycle/Lifecycle$State;

    new-instance v2, Landroidx/lifecycle/Lifecycle$State;

    const-string v3, "CREATED"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Landroidx/lifecycle/Lifecycle$State;-><init>(Ljava/lang/String;I)V

    sput-object v2, Landroidx/lifecycle/Lifecycle$State;->f:Landroidx/lifecycle/Lifecycle$State;

    new-instance v3, Landroidx/lifecycle/Lifecycle$State;

    const-string v4, "STARTED"

    const/4 v5, 0x3

    invoke-direct {v3, v4, v5}, Landroidx/lifecycle/Lifecycle$State;-><init>(Ljava/lang/String;I)V

    sput-object v3, Landroidx/lifecycle/Lifecycle$State;->g:Landroidx/lifecycle/Lifecycle$State;

    new-instance v4, Landroidx/lifecycle/Lifecycle$State;

    const-string v5, "RESUMED"

    const/4 v6, 0x4

    invoke-direct {v4, v5, v6}, Landroidx/lifecycle/Lifecycle$State;-><init>(Ljava/lang/String;I)V

    sput-object v4, Landroidx/lifecycle/Lifecycle$State;->h:Landroidx/lifecycle/Lifecycle$State;

    filled-new-array {v0, v1, v2, v3, v4}, [Landroidx/lifecycle/Lifecycle$State;

    move-result-object v0

    sput-object v0, Landroidx/lifecycle/Lifecycle$State;->i:[Landroidx/lifecycle/Lifecycle$State;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Landroidx/lifecycle/Lifecycle$State;
    .locals 1

    const-class v0, Landroidx/lifecycle/Lifecycle$State;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Landroidx/lifecycle/Lifecycle$State;

    return-object p0
.end method

.method public static values()[Landroidx/lifecycle/Lifecycle$State;
    .locals 1

    sget-object v0, Landroidx/lifecycle/Lifecycle$State;->i:[Landroidx/lifecycle/Lifecycle$State;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroidx/lifecycle/Lifecycle$State;

    return-object v0
.end method


# virtual methods
.method public final a(Landroidx/lifecycle/Lifecycle$State;)Z
    .locals 0

    invoke-virtual {p0, p1}, Ljava/lang/Enum;->compareTo(Ljava/lang/Enum;)I

    move-result p0

    if-ltz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
