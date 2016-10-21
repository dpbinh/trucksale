package com.trucksale.model;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.ManyToOne;

@Entity
public class Product {
	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	private long id;
	
	private String name;
	
	private String img;
	
	private long price;
	
	private String overallDemension;
	
	private String insideCargoBoxDemension;
	
	private String frontRearTread;
	
	private String wheelBase;
	
	private String groundClearance;
	
	private String curbWeight;
	
	private String loadWeight;
	
	private String grossWeight;
	
	private String numberOfSeats;
	
	private String carEngine;
	
	private String engineType;
	
	private String displacement;
	
	private String diameterPistonStroke;
	
	private String maxPowerRotationSpeed;
	
	private String maxTorqueRotationSpeed;
	
	private String clutch;
	
	private String manual;
	
	private String stearingSystem;
	
	private String brakesSystem;
	
	private String front;
	
	private String rear;
	
	private String frontRear;
	
	private String hillClimbingAbility;
	
	private String minimumTurningRadius;
	
	private String maximumSpeed;
	
	private String capacityFuelTank;
	
	private String seatBelt;
	
	private String lockDoor;
	
	private String damping;
	
	private String brakeLight;
	
	private String burgalar;
	
	private String insideImgDir;
	
	private String outsideImgDir;
	
	@ManyToOne
	private ProductGroup productGroup;
	
	public Product() {
		super();
	}

	public Product(String productName, String img, long price) {
		super();
		this.name = productName;
		this.img = img;
		this.price = price;
	}

	public long getId() {
		return id;
	}

	public void setId(long id) {
		this.id = id;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getImg() {
		return img;
	}

	public void setImg(String img) {
		this.img = img;
	}

	public long getPrice() {
		return price;
	}

	public void setPrice(long price) {
		this.price = price;
	}

	public ProductGroup getProductGroup() {
		return productGroup;
	}

	public void setProductGroup(ProductGroup productGroup) {
		this.productGroup = productGroup;
	}

	public String getOverallDemension() {
		return overallDemension;
	}

	public void setOverallDemension(String overallDemension) {
		this.overallDemension = overallDemension;
	}

	public String getInsideCargoBoxDemension() {
		return insideCargoBoxDemension;
	}

	public void setInsideCargoBoxDemension(String insideCargoBoxDemension) {
		this.insideCargoBoxDemension = insideCargoBoxDemension;
	}

	public String getFrontRearTread() {
		return frontRearTread;
	}

	public void setFrontRearTread(String frontRearTread) {
		this.frontRearTread = frontRearTread;
	}

	public String getWheelBase() {
		return wheelBase;
	}

	public void setWheelBase(String wheelBase) {
		this.wheelBase = wheelBase;
	}

	public String getGroundClearance() {
		return groundClearance;
	}

	public void setGroundClearance(String groundClearance) {
		this.groundClearance = groundClearance;
	}

	public String getCurbWeight() {
		return curbWeight;
	}

	public void setCurbWeight(String curbWeight) {
		this.curbWeight = curbWeight;
	}

	public String getLoadWeight() {
		return loadWeight;
	}

	public void setLoadWeight(String loadWeight) {
		this.loadWeight = loadWeight;
	}

	public String getGrossWeight() {
		return grossWeight;
	}

	public void setGrossWeight(String grossWeight) {
		this.grossWeight = grossWeight;
	}

	public String getNumberOfSeats() {
		return numberOfSeats;
	}

	public void setNumberOfSeats(String numberOfSeats) {
		this.numberOfSeats = numberOfSeats;
	}

	public String getCarEngine() {
		return carEngine;
	}

	public void setCarEngine(String carEngine) {
		this.carEngine = carEngine;
	}

	public String getDisplacement() {
		return displacement;
	}

	public void setDisplacement(String displacement) {
		this.displacement = displacement;
	}

	public String getDiameterXPistonStroke() {
		return diameterPistonStroke;
	}

	public void setDiameterXPistonStroke(String diameterXPistonStroke) {
		this.diameterPistonStroke = diameterXPistonStroke;
	}

	public String getMaxPowerRotationSpeed() {
		return maxPowerRotationSpeed;
	}

	public void setMaxPowerRotationSpeed(String maxPowerRotationSpeed) {
		this.maxPowerRotationSpeed = maxPowerRotationSpeed;
	}

	public String getMaxTorqueRotationSpeed() {
		return maxTorqueRotationSpeed;
	}

	public void setMaxTorqueRotationSpeed(String maxTorqueRotationSpeed) {
		this.maxTorqueRotationSpeed = maxTorqueRotationSpeed;
	}

	public String getClutch() {
		return clutch;
	}

	public void setClutch(String clutch) {
		this.clutch = clutch;
	}

	public String getManual() {
		return manual;
	}

	public void setManual(String manual) {
		this.manual = manual;
	}

	public String getStearingSystem() {
		return stearingSystem;
	}

	public void setStearingSystem(String stearingSystem) {
		this.stearingSystem = stearingSystem;
	}

	public String getBrakesSystem() {
		return brakesSystem;
	}

	public void setBrakesSystem(String brakesSystem) {
		this.brakesSystem = brakesSystem;
	}

	public String getFront() {
		return front;
	}

	public void setFront(String front) {
		this.front = front;
	}

	public String getRear() {
		return rear;
	}

	public void setRear(String rear) {
		this.rear = rear;
	}

	public String getFrontRear() {
		return frontRear;
	}

	public void setFrontRear(String frontRear) {
		this.frontRear = frontRear;
	}

	public String getHillClimbingAbility() {
		return hillClimbingAbility;
	}

	public void setHillClimbingAbility(String hillClimbingAbility) {
		this.hillClimbingAbility = hillClimbingAbility;
	}

	public String getMinimumTurningRadius() {
		return minimumTurningRadius;
	}

	public void setMinimumTurningRadius(String minimumTurningRadius) {
		this.minimumTurningRadius = minimumTurningRadius;
	}

	public String getMaximumSpeed() {
		return maximumSpeed;
	}

	public void setMaximumSpeed(String maximumSpeed) {
		this.maximumSpeed = maximumSpeed;
	}

	public String getCapacityFuelTank() {
		return capacityFuelTank;
	}

	public void setCapacityFuelTank(String capacityFuelTank) {
		this.capacityFuelTank = capacityFuelTank;
	}

	public String getSeatBelt() {
		return seatBelt;
	}

	public void setSeatBelt(String seatBelt) {
		this.seatBelt = seatBelt;
	}

	public String getLockDoor() {
		return lockDoor;
	}

	public void setLockDoor(String lockDoor) {
		this.lockDoor = lockDoor;
	}

	public String getDamping() {
		return damping;
	}

	public void setDamping(String damping) {
		this.damping = damping;
	}

	public String getBrakeLight() {
		return brakeLight;
	}

	public void setBrakeLight(String brakeLight) {
		this.brakeLight = brakeLight;
	}

	public String getBurgalar() {
		return burgalar;
	}

	public void setBurgalar(String burgalar) {
		this.burgalar = burgalar;
	}

	public String getInsideImgDir() {
		return insideImgDir;
	}

	public void setInsideImgDir(String insideImgDir) {
		this.insideImgDir = insideImgDir;
	}

	public String getOutsideImgDir() {
		return outsideImgDir;
	}

	public void setOutsideImgDir(String outsideImgDir) {
		this.outsideImgDir = outsideImgDir;
	}

	public String getEngineType() {
		return engineType;
	}

	public void setEngineType(String engineType) {
		this.engineType = engineType;
	}

	public String getDiameterPistonStroke() {
		return diameterPistonStroke;
	}

	public void setDiameterPistonStroke(String diameterPistonStroke) {
		this.diameterPistonStroke = diameterPistonStroke;
	}
	
	
}
